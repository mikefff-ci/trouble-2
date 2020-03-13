#!/usr/bin/env python3
import os
import sys
import time
import signal

SIGNALS_TO_NAMES_DICT = dict((getattr(signal, n), n) \
    for n in dir(signal) if n.startswith('SIG') and '_' not in n )


def receive_signal(signum, stack):
    if signum in [1,2,3,15]:
        print('Caught signal %s (%s), exiting.' % (SIGNALS_TO_NAMES_DICT[signum], str(signum)))
        for i in range(10000):
            print('start')
            time.sleep(1)
            print ('still time')
    else:
        print('Caught signal %s (%s), ignoring.' % (SIGNALS_TO_NAMES_DICT[signum], str(signum)))

def main():
    uncatchable = ['SIG_DFL','SIGSTOP','SIGKILL']
    for i in range(signal.NSIG):
        print(i)
        try:
            signal.signal(i,receive_signal)
        except:
            print(i)
    print('My PID: %s' % os.getpid())
    while True:
        time.sleep(1)
main()
