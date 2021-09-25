import csv_handler
import sys

if __name__ == '__main__':
    if len(sys.argv) != 2:
        print(f"Expecting a filename! Received {len(sys.argv) - 1} command line arguments.")
        sys.exit(0)

    filename = sys.argv[1]
    pu_cnt, do_cnt = csv_handler.pickup_dropoff_yielder(filename)
    print(pu_cnt)
    print(do_cnt)
