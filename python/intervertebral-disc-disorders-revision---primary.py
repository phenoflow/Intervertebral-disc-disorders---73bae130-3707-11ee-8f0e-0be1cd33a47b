# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2023.

import sys, csv, re

codes = [{"code":"7J21.00","system":"readv2"},{"code":"7J21000","system":"readv2"},{"code":"7J21100","system":"readv2"},{"code":"7J21200","system":"readv2"},{"code":"7J21300","system":"readv2"},{"code":"7J21400","system":"readv2"},{"code":"7J21600","system":"readv2"},{"code":"7J21700","system":"readv2"},{"code":"7J21y00","system":"readv2"},{"code":"7J21z00","system":"readv2"},{"code":"7J24600","system":"readv2"},{"code":"7J24B00","system":"readv2"},{"code":"7J24x00","system":"readv2"},{"code":"7J33.00","system":"readv2"},{"code":"7J33.11","system":"readv2"},{"code":"7J33000","system":"readv2"},{"code":"7J33100","system":"readv2"},{"code":"7J33200","system":"readv2"},{"code":"7J33400","system":"readv2"},{"code":"7J33411","system":"readv2"},{"code":"7J33600","system":"readv2"},{"code":"7J33700","system":"readv2"},{"code":"7J33y00","system":"readv2"},{"code":"7J33z00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('intervertebral-disc-disorders-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["intervertebral-disc-disorders-revision---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["intervertebral-disc-disorders-revision---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["intervertebral-disc-disorders-revision---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
