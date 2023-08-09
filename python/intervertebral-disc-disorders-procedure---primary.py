# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2023.

import sys, csv, re

codes = [{"code":"10018.0","system":"med"},{"code":"101266.0","system":"med"},{"code":"10198.0","system":"med"},{"code":"102312.0","system":"med"},{"code":"104215.0","system":"med"},{"code":"104368.0","system":"med"},{"code":"105948.0","system":"med"},{"code":"106746.0","system":"med"},{"code":"108670.0","system":"med"},{"code":"11282.0","system":"med"},{"code":"15921.0","system":"med"},{"code":"20752.0","system":"med"},{"code":"21434.0","system":"med"},{"code":"22434.0","system":"med"},{"code":"24314.0","system":"med"},{"code":"24607.0","system":"med"},{"code":"26431.0","system":"med"},{"code":"27692.0","system":"med"},{"code":"28002.0","system":"med"},{"code":"31025.0","system":"med"},{"code":"3219.0","system":"med"},{"code":"32549.0","system":"med"},{"code":"33490.0","system":"med"},{"code":"35008.0","system":"med"},{"code":"36708.0","system":"med"},{"code":"38447.0","system":"med"},{"code":"38645.0","system":"med"},{"code":"38863.0","system":"med"},{"code":"38934.0","system":"med"},{"code":"38993.0","system":"med"},{"code":"40487.0","system":"med"},{"code":"4355.0","system":"med"},{"code":"46143.0","system":"med"},{"code":"47128.0","system":"med"},{"code":"48044.0","system":"med"},{"code":"49941.0","system":"med"},{"code":"50931.0","system":"med"},{"code":"51740.0","system":"med"},{"code":"56329.0","system":"med"},{"code":"56435.0","system":"med"},{"code":"56812.0","system":"med"},{"code":"56943.0","system":"med"},{"code":"56989.0","system":"med"},{"code":"60295.0","system":"med"},{"code":"60480.0","system":"med"},{"code":"6261.0","system":"med"},{"code":"63160.0","system":"med"},{"code":"63883.0","system":"med"},{"code":"64411.0","system":"med"},{"code":"65629.0","system":"med"},{"code":"67042.0","system":"med"},{"code":"67116.0","system":"med"},{"code":"67255.0","system":"med"},{"code":"67582.0","system":"med"},{"code":"6809.0","system":"med"},{"code":"68316.0","system":"med"},{"code":"68323.0","system":"med"},{"code":"68885.0","system":"med"},{"code":"70499.0","system":"med"},{"code":"70697.0","system":"med"},{"code":"70878.0","system":"med"},{"code":"71283.0","system":"med"},{"code":"71960.0","system":"med"},{"code":"73016.0","system":"med"},{"code":"8652.0","system":"med"},{"code":"91613.0","system":"med"},{"code":"93771.0","system":"med"},{"code":"9510.0","system":"med"},{"code":"96945.0","system":"med"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('intervertebral-disc-disorders-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["intervertebral-disc-disorders-procedure---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["intervertebral-disc-disorders-procedure---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["intervertebral-disc-disorders-procedure---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
