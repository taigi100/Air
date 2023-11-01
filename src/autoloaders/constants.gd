extends Node

# Game Time
const time_dilation: float = 10.0

const seconds_in_minute: int = 60
const minutes_in_hours: int = 60
const hours_in_day: int = 24

const time_broadcast_frequency = 5

# Event Queues

const queue_day_change: String = "gametime.daychange"
const queue_minute_change: String = "gametime.minutechange"
