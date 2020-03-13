#!/usr/bin/env python3
import time
import signal

def receive_signal(signum, stack):
    print('Caught SIGINT');

def main():
    signal.signal(signal.SIGINT,receive_signal)

    while True:
        time.sleep(1)
main()
