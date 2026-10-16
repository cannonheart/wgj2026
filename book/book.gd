extends Node2D
class_name Book


var tracker: Array[int] = [-1]


var content = []
var verbose = false

func get_current(_tracker: Array[int]):
	if verbose: print("getting current")
	
	var found = content
	for index in _tracker:
		if verbose: print(index)
		if found is Array:
			if verbose: print("found array length:", found.size())
			if index >= found.size():
				return null

			found = found[index]
		
		elif found is Choice:
			if verbose: print("found choice")
			if index >= found.options.size():
				return null
				
			found = found.options[index]
		
		elif found is ChoiceOption:
			if verbose: print("found choice option")
			if index >= found.inner.size():
				return null
			
			found = found.inner[index]
		
		elif found is Condition:
			if verbose: print("found condition")
			if index >= found.inner.size():
				return null
			
			return found.inner[index]
		
		else:
			if verbose: print("fuck")
			assert(false, str(found))
	
	return found


func _handle_found(found):
	if found is String:
		if verbose: print("handling string")
		return found
	
	elif found == null:
		if verbose: print("handling null")
		if tracker.size() > 0:
			tracker = tracker.slice(0, -1)
			return next()
		else:
			return null
	
	elif found is Array:
		if verbose: print("handling array")
		tracker.append(-1)
		return next()
	
	elif found is Callable:
		if verbose: print("handling callable")
		found.call()
		return next()
	
	
	elif found is Choice:
		if verbose: print("handling choice")
		var labels = []
		
		for opt in found.options:
			if opt.label is Condition:
				if opt.label.fn.call():
					labels.append(opt.label.inner)
			else:
				labels.append(opt.label)
		
		return labels
	
	
	elif found is Condition:
		if verbose: print("handling condition")
		if found.fn.call():
			return _handle_found(found.inner)
	
	elif found is CustomLine:
		if verbose: print("handling CustomLine")
		return found
	
	else:
		assert(false, str(found))


func next():
	if verbose: print("nexting")
	if tracker.size() == 0:
		return null
	
	tracker[tracker.size() - 1] += 1
	
	var found = get_current(tracker)
	
	var handled = _handle_found(found)
	if verbose: print("nexting done", handled)
	return handled


func select(index: int):
	tracker.append(index)
	tracker.append(-1)


func choice(options: Array):
	var c = Choice.new()
	var choice_opts: Array[ChoiceOption] = []
	
	for opt in options:
		var o = ChoiceOption.new()
		o.inner = opt.slice(1)
		o.label = opt[0]
		choice_opts.append(o)
	
	c.options = choice_opts
	
	return c


func cond(fn: Callable, inner):
	var c = Condition.new()
	c.fn = fn
	c.inner = inner
	return c


class Choice:
	var options: Array[ChoiceOption]


class ChoiceOption:
	var label: Variant
	var inner: Array


class Condition:
	var fn: Callable
	var inner: Variant


class CustomLine:
	var anything: String
