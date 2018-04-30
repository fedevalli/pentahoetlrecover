# Penthao Recover Script

## Context 

We use Penthao Data Integration for ELT. Penthao must be always up or the daily jobs will fail.
I created this script to manage the case of a Penthao crash unsupervised.  
It checks if Penthao is down, if yes it re-lunch Penthao without UI and starts the main Job.

### Usage

I suggest to schedule this bat script using Windows Task Scheduler.
