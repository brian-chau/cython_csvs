import csv
import sys

def pickup_dropoff_yielder(filename):
    with open(filename) as csv_file:
        dr = csv.reader(csv_file)
        is_first_line = True
        payment_type_index = 0
        pu_index, do_index = 0, 0
        pu_count = 0
        do_count = 0
        for row in dr:
            if is_first_line:
                payment_type_index = row.index('payment_type')
                pu_index = row.index('PULocationID')
                do_index = row.index('DOLocationID')
                is_first_line = False
            elif len(row) > 0 and row[payment_type_index] == '3':
                if row[pu_index] == '170':
                    pu_count += 1
                elif row[do_index] == '170':
                    do_count += 1
        return pu_count, do_count
