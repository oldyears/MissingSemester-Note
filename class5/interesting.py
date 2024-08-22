import signal, time

def handler(signum, time):
    print("\nI got your intention, but you can't quit. haha!")

# 处理SIGINT
signal.signal(signal.SIGINT, handler)
i = 0
while (i < 120):
    time.sleep(.1)
    print("\ryou have been under my control for %s s, and there's nothing you can do except close the terminal." % i, end="")
    i += 1