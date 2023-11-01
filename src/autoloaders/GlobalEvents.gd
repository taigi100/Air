extends Node

var observers = {}

func subscribe(topic: String, function: Callable):
	if (observers.has(topic)):
		observers[topic].push(function)
	else:
		observers[topic] = [function]
	
func emit(topic: String):
	if(observers.has(topic)):
		for fun in observers.get(topic):
			fun.call()
