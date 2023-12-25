extends Node

# Game Time
const time_dilation: float = 3000.0

const seconds_in_minute: int = 60
const minutes_in_hours: int = 60
const hours_in_day: int = 24

const time_broadcast_frequency = 5

# Event Queues

signal gametime_minutechange(minute: int)

signal day_start
signal day_end

signal customer_spawn

signal give_ticket(ticket: Ticket)

signal good_ticket
signal bad_ticket
