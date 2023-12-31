# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2023.

import sys, csv, re

codes = [{"code":"V62","system":"opcs4"},{"code":"V62.1","system":"opcs4"},{"code":"V62.2","system":"opcs4"},{"code":"V62.3","system":"opcs4"},{"code":"V62.8","system":"opcs4"},{"code":"V62.9","system":"opcs4"},{"code":"V63","system":"opcs4"},{"code":"V63.1","system":"opcs4"},{"code":"V63.2","system":"opcs4"},{"code":"V63.3","system":"opcs4"},{"code":"V63.8","system":"opcs4"},{"code":"V63.9","system":"opcs4"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('intervertebral-disc-disorders-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["intervertebral-disc-disorders-thermocoagulation---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["intervertebral-disc-disorders-thermocoagulation---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["intervertebral-disc-disorders-thermocoagulation---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
