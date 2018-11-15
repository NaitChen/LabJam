insert into lab values
('0001','Gryffindor','Zoology');
insert into lab values
('0002','Hufflepuff','Psychology');
insert into lab values
('0003','Ravenclaw','Physics');
insert into lab values
('0004','Powerpuff','Biology');
insert into lab values
('0005','Slytherin','Psychology');
insert into lab values
('0006','Jones','Biology');
insert into lab values
('0007','Copper','Statistics');
insert into lab values
('0008','Gregor','Computer Science');
insert into lab values
('0009','Djokovic','Political Science');
insert into lab values
('0010','Wang','Microbiology');


insert into Contains_LabMember values
('1111','0001','Harry Patter','Zoology','7789981234');
insert into Contains_LabMember values
('1112','0001','Shermione Granger','Genetics','7789981235');
insert into Contains_LabMember values
('1113','0001','Don Weasley','Zoology','7789981236');
insert into Contains_LabMember values
('1114','0001','Pat Weasley','Accounting','7789981237');
insert into Contains_LabMember values
('1115','0001','Severus Shape','Zoology','7789981238');
insert into LabManager values
('1114','full time');
insert into PI values
('1115','Zoology');
insert into Researcher values
('1111','Field');
insert into Researcher values
('1112','Field');
insert into Researcher values
('1113','Field');
insert into Project_MaterialType values
('Save The Hippogriffs','Genetics','Illumina EPIC Array');
insert into Project_MaterialType values
('Murtlap','Zoology','Compound Microscope');
insert into Supervises_WorksOn values
('Save The Hippogriffs','1111','1115','lead researcher');
insert into Supervises_WorksOn values
('Save The Hippogriffs','1112','1115','assisting researcher');
insert into Supervises_WorksOn values
('Save The Hippogriffs','1113','1115','2 assisting researcher');
insert into Supervises_WorksOn values
('Murtlap','1112','1115','lead researcher');
insert into Supervises_WorksOn values
('Murtlap','1113','1115','assisting researcher');
insert into Role_WeeklyHoursAllocated values
('lead researcher',30);
insert into Role_WeeklyHoursAllocated values
('assisting researcher',25);
insert into Role_WeeklyHoursAllocated values
('second assisting researcher',20);
insert into MaterialType_MaterialPrice values
('Illumina EPIC Array',32999.9);
insert into MaterialType_MaterialPrice values
('Compound Microscope',170.6);
insert into Applies_OpenGrant_Date values
('NSERC UBC Zoology',20000,TO_DATE('17/12/2017', 'DD/MM/YYYY'),'pending');
insert into Applies_OpenGrant_Date values
('AllerGen 2018 Gryffindor',20000,TO_DATE('10/10/2018', 'DD/MM/YYYY'),'pending');
insert into Applies_OpenGrant_Date values
('BC Children Funds',10000,TO_DATE('04/08/2018', 'DD/MM/YYYY'),'rejected');
insert into Date_Name_Lmid values
('NSERC UBC Zoology',TO_DATE('17/12/2017', 'DD/MM/YYYY'),'1114');
insert into Date_Name_Lmid values
('AllerGen 2018 Gryffindor',TO_DATE('10/10/2018', 'DD/MM/YYYY'),'1114');
insert into Date_Name_Lmid values
('BC Children Funds',TO_DATE('04/08/2018', 'DD/MM/YYYY'),'1114');
insert into Fund_ApprovedGrant values
('AllerGen 2017 Gryffindor',42000.9,'Save The Hippogriffs');
insert into Fund_ApprovedGrant values
('AllerGen 2016 Gryffindor',35690.2,'Save The Hippogriffs');

insert into Contains_LabMember values
('1121','0002','Harry Patter','Psychology','7789981239');
insert into Contains_LabMember values
('1122','0002','Shermione Lranger','Psychology','7789981240');
insert into Contains_LabMember values
('1123','0002','Don Keasley','Statistics','7789981241');
insert into Contains_LabMember values
('1124','0002','John Smith','English','7789981242');
insert into Contains_LabMember values
('1125','0002','Charity Burbage','Psychology','7789981243');
insert into LabManager values
('1124','full time');
insert into PI values
('1125','Psychology');
insert into Researcher values
('1121','Social Studies');
insert into Researcher values
('1122','Social Studies');
insert into Researcher values
('1123','Data');
insert into Project_MaterialType values
('Conversations with Merpeople','Psychology','Geodesic EEG System 100');
insert into Project_MaterialType values
('De-depress Demontors','Psychology','Geodesic EEG System 200');
insert into Supervises_WorksOn values
('Conversations with Merpeople','1121','1125','secondary lead researcher');
insert into Supervises_WorksOn values
('Conversations with Merpeople','1122','1125','primary lead researcher');
insert into Supervises_WorksOn values
('Conversations with Merpeople','1123','1125','tertiary lead researcher');
insert into Role_WeeklyHoursAllocated values
('primary lead researcher',35);
insert into Role_WeeklyHoursAllocated values
('secondary lead researcher',35);
insert into Role_WeeklyHoursAllocated values
('tertiary lead researcher',34);
insert into Supervises_WorksOn values
('De-depress Demontors','1123','1125','lead researcher');
insert into MaterialType_MaterialPrice values
('Geodesic EEG System 100',100);
insert into MaterialType_MaterialPrice values
('Geodesic EEG System 200',200);
insert into Applies_OpenGrant_Date values
('AllerGen 2018 Hufflepuff',20000,TO_DATE('10/10/2018', 'DD/MM/YYYY'),'pending');
insert into Date_Name_Lmid values
('AllerGen 2018 Hufflepuff',TO_DATE('10/10/2018', 'DD/MM/YYYY'),'1124');
insert into Fund_ApprovedGrant values
('AllerGen 2016 Hufflepuff',50000,'Conversations with Merpeople');
insert into Fund_ApprovedGrant values
('AllerGen 2017 Hufflepuff',50000,'De-depress Demontors');

insert into Contains_LabMember values
('1221','0003','Iron Man','Physics','7789981244');
insert into Contains_LabMember values
('1222','0003','Blank Panther','Maths','7789981245');
insert into Contains_LabMember values
('1223','0003','Black Widow','Physics','7789981246');
insert into LabManager values
('1222','full time');
insert into PI values
('1223','Physics');
insert into Researcher values
('1221','Field');
insert into Project_MaterialType values
('Bring Back Spider-Man','Physics','Infinity Stones');
insert into Project_MaterialType values
('Time and Space Paradox','Physics','particle accelerator');
insert into Supervises_WorksOn values
('Bring Back Spider-Man','1221','1223','urgent lead researcher');
insert into Role_WeeklyHoursAllocated values
('urgent lead researcher',168);
insert into Supervises_WorksOn values
('Time and Space Paradox','1221','1223','lead researcher');
insert into MaterialType_MaterialPrice values
('Infinity Stones',9999999);
insert into MaterialType_MaterialPrice values
('particle accelerator',999999);
insert into Applies_OpenGrant_Date values
('RIP Stan Lee',100000,TO_DATE('12/11/2018', 'DD/MM/YYYY'),'pending');
insert into Date_Name_Lmid values
('RIP Stan Lee',TO_DATE('12/11/2018', 'DD/MM/YYYY'),'1222');
insert into Fund_ApprovedGrant values
('Star of Malvel',50000,'Time and Space Paradox');


insert into Contains_LabMember values
('1300','0004','Blossom Powerpuff','Biology','7789981247');
insert into Contains_LabMember values
('1301','0004','Bubbles Powerpuff','Biology','7789981248');
insert into Contains_LabMember values
('1302','0004','Buttercup Powerpuff','Biology','7789981249');
insert into LabManager values
('1300','part time');
insert into PI values
('1301','Biology');
insert into Researcher values
('1302','Tech');
insert into Project_MaterialType values
('Banana Pathogenic Resistance Genes','Biology','Thermal cycler');
insert into Project_MaterialType values
('Corn DNA sequence','Biology','Illumina 450K Array');
insert into Supervises_WorksOn values
('Banana Pathogenic Resistance Genes','1302','1301','lead researcher');
insert into Supervises_WorksOn values
('Corn DNA sequence','1302','1301','backup lead researcher');
insert into Role_WeeklyHoursAllocated values
('backup lead researcher',10);
insert into MaterialType_MaterialPrice values
('Thermal cycler',1984.6);
insert into MaterialType_MaterialPrice values
('Illumina 450K Array',300);
insert into Applies_OpenGrant_Date values
('Canada Agriculture Funds 2018',10000,TO_DATE('09/05/2018', 'DD/MM/YYYY'),'pending');
insert into Applies_OpenGrant_Date values
('International Agriculture Funds 2018',10000,TO_DATE('03/10/2018', 'DD/MM/YYYY'),'pending');
insert into Date_Name_Lmid values
('Canada Agriculture Funds 2018',TO_DATE('09/05/2018', 'DD/MM/YYYY'),'1300');
insert into Date_Name_Lmid values
('International Agriculture Funds 2018',TO_DATE('03/10/2018', 'DD/MM/YYYY'),'1300');
insert into Fund_ApprovedGrant values
('Canada Agriculture Funds 2017',50000,'Banana Pathogenic Resistance Genes');
insert into Fund_ApprovedGrant values
('Canada Agriculture Funds 2016',50000,'Banana Pathogenic Resistance Genes');
insert into Fund_ApprovedGrant values
('International Agriculture Funds 2017',40000,'Banana Pathogenic Resistance Genes');


insert into Contains_LabMember values
('8908','0005','Chuyi Guang','Psychology','7789981250');
insert into LabManager values
('8908','full time');
insert into Contains_LabMember values
('8910','0005','Draco Lucius Nalfoy','Psychology','7789981251');
insert into PI values
('8910','Psychology');
insert into Contains_LabMember values
('8911','0005','Lol Yeet','Statistics','7789981252');
insert into Researcher values
('8911','Data');
insert into Project_MaterialType values
('post-voldemort trauma','Psychology','Geodesic EEG System 300');
insert into Supervises_WorksOn values
('post-voldemort trauma','8911','8910','assisting lead researcher');
insert into Role_WeeklyHoursAllocated values
('assisting lead researcher',12);
insert into MaterialType_MaterialPrice values
('Geodesic EEG System 300',300);
insert into Applies_OpenGrant_Date values
('Hogwarts Fund',10000,TO_DATE('06/10/2018', 'DD/MM/YYYY'),'approved');
insert into Applies_OpenGrant_Date values
('Snape Fund',10000,TO_DATE('14/10/2018', 'DD/MM/YYYY'),'pending');
insert into Date_Name_Lmid values
('Hogwarts Fund',TO_DATE('06/10/2018', 'DD/MM/YYYY'),'8908');
insert into Date_Name_Lmid values
('Snape Fund',TO_DATE('14/10/2018', 'DD/MM/YYYY'),'8908');
insert into Fund_ApprovedGrant values
('Poor Draco 2017',3490.8,'post-voldemort trauma');
insert into Fund_ApprovedGrant values
('Poor Draco 2016',2000,'post-voldemort trauma');


insert into Contains_LabMember values
('8912','0006','Ray Li','Biology','7789981253');
insert into LabManager values
('8912','full time');
insert into Contains_LabMember values
('8913','0006','Mia Jones','Biology','7789981254');
insert into PI values
('8913','Biology');
insert into Contains_LabMember values
('8914','0006','Lol Yeetz','Biology','7789981255');
insert into Researcher values
('8914','Tech');
insert into Project_MaterialType values
('Fruit Fly Genes','Biology','Thermal cycler');
insert into Fund_ApprovedGrant values
('Love Fruit Flies Too 2018',20000,'Fruit Fly Genes');
insert into Supervises_WorksOn values
('Fruit Fly Genes','8914','8913','lead researcher');

insert into Contains_LabMember values
('8915','0007','Caitlyn Brown','Statistics','7789981256');
insert into LabManager values
('8915','part time');
insert into Contains_LabMember values
('8916','0007','Nya Coppers','Statistics','7789981257');
insert into PI values
('8916','Statistics');
insert into Contains_LabMember values
('8917','0007','Lmao Yeetz','Computer Science','7789981258');
insert into Researcher values
('8917','Tech');
insert into Project_MaterialType values
('Bayes','Statistics','Computer');
insert into MaterialType_MaterialPrice values
('Computer',2000);
insert into Supervises_WorksOn values
('Bayes','8917','8916','lead researcher');


insert into Contains_LabMember values
('8918','0008','Jiali Zhang','Statistics','7789981259');
insert into LabManager values
('8918','full time');
insert into Contains_LabMember values
('8919','0008','World Gregor','Computer Science','7789981260');
insert into PI values
('8919','Machine Learning');
insert into Contains_LabMember values
('8920','0008','Dab Hard','Computer Science','7789981261');
insert into Researcher values
('8920','Data');
insert into Project_MaterialType values
('ML for Genetics','Computer Science','Jones Lab Data');
insert into MaterialType_MaterialPrice values
('Jones Lab Data',500);
insert into Supervises_WorksOn values
('ML for Genetics','8920','8919','lead researcher');


insert into Contains_LabMember values
('8921','0009','Anna Ivanovic','Statistics','7789981262');
insert into LabManager values
('8921','full time');
insert into Contains_LabMember values
('8922','0009','Nojak Djokovic','Political Science','7789981263');
insert into PI values
('8922','Political Science');
insert into Contains_LabMember values
('8923','0009','John Isnar','History','7789981264');
insert into Researcher values
('8923','Data');
insert into Project_MaterialType values
('Housing in Vancouver','Political Science','Paper');
insert into MaterialType_MaterialPrice values
('Paper',16.99);
insert into Supervises_WorksOn values
('Housing in Vancouver','8923','8922','lead researcher');


insert into Contains_LabMember values
('8924','0010','Stefanas Tsitsipas','Accounting','7789981265');
insert into LabManager values
('8924','full time');
insert into Contains_LabMember values
('8925','0010','Haoran Wang','Microbiology','7789981266');
insert into PI values
('8925','Microbiology');
insert into Contains_LabMember values
('8926','0010','Karoline Wozniacki','Microbiology','7789981267');
insert into Researcher values
('8926','Tech');
insert into Project_MaterialType values
('Yeet the yeasts','Genetics','Yeast Culture');
insert into MaterialType_MaterialPrice values
('Yeast Culture',120);
insert into Applies_OpenGrant_Date values
('Canada Yeast Fund',10000,TO_DATE('14/10/2018', 'DD/MM/YYYY'),'pending');
insert into Date_Name_Lmid values
('Canada Yeast Fund',TO_DATE('14/10/2018', 'DD/MM/YYYY'),'8924');
insert into Supervises_WorksOn values
('Yeet the yeasts','8926','8925','lead researcher');

insert into Assigned_Collaborators_Id values
('6001','January Day','Statistics');
insert into Assigned_Collaborators_Id values
('6002','February Day','Statistics');
insert into Assigned_Collaborators_Id values
('6003','March Day','Statistics');
insert into Assigned_Collaborators_Id values
('6004','April Day','Statistics');
insert into Assigned_Collaborators_Id values
('6005','May Day','Statistics');
insert into Assigned_Collaborators_Id values
('6006','June Day','Statistics');
insert into Assigned_Collaborators_Id values
('6007','July Day','Statistics');
insert into Assigned_Collaborators_Id values
('6008','August Day','Statistics');
insert into Assigned_Collaborators_Id values
('6009','September Day','Statistics');
insert into Assigned_Collaborators_Id values
('6010','October Day','Statistics');

insert into Name_Education_ProjectName values
('January Day','Statistics','Save The Hippogriffs');
insert into Name_Education_ProjectName values
('February Day','Statistics','Save The Hippogriffs');
insert into Name_Education_ProjectName values
('March Day','Statistics','Save The Hippogriffs');
insert into Name_Education_ProjectName values
('April Day','Statistics','post-voldemort trauma');
insert into Name_Education_ProjectName values
('May Day','Statistics','post-voldemort trauma');
insert into Name_Education_ProjectName values
('June Day','Statistics','Banana Pathogenic Resistance Genes');
insert into Name_Education_ProjectName values
('July Day','Statistics','Banana Pathogenic Resistance Genes');
insert into Name_Education_ProjectName values
('August Day','Statistics','Yeet the yeasts');
insert into Name_Education_ProjectName values
('September Day','Statistics','Bring Back Spider-Man');
insert into Name_Education_ProjectName values
('October Day','Statistics','Bring Back Spider-Man');

insert into Subject values
('0011','Philip Zuckerburg','Y');
insert into Subject values
('0012','Lang Zuckerburg','Y');
insert into Subject values
('0013','Timmy Hortons','Y');
insert into Subject values
('0014','Starry Bucks','Y');
insert into Subject values
('0015','Java Blenz','Y');
insert into Subject values
('0016','Third Cup','Y');
insert into Subject values
('0017','Ocean Waves','Y');
insert into Subject values
('0018','Santa Oyes','Y');
insert into Subject values
('0019','Wu Nang','Y');
insert into Subject values
('0020','Chris Baker','Y');

insert into Takes_Booking values
('post-voldemort trauma',1,1,'Control Group');
insert into Takes_Booking values
('post-voldemort trauma',2,1,'Control Group');
insert into Takes_Booking values
('post-voldemort trauma',3,1,'Experimental Group');
insert into Takes_Booking values
('post-voldemort trauma',4,1,'Experimental Group');
insert into Takes_Booking values
('Conversations with Merpeople',1,1,'Control Gorup');
insert into Takes_Booking values
('Conversations with Merpeople',2,1,'Control Gorup');
insert into Takes_Booking values
('Conversations with Merpeople',3,1,'Experimental Group');
insert into Takes_Booking values
('Conversations with Merpeople',4,1,'Experimental Group');
insert into Takes_Booking values
('De-depress Demontors',1,1,'Control Gorup');
insert into Takes_Booking values
('De-depress Demontors',2,1,'Experimental Group');


insert into Participates values
('0011','post-voldemort trauma',1,TO_DATE('13/11/2018', 'DD/MM/YYYY'));
insert into Participates values
('0012','post-voldemort trauma',2,TO_DATE('10/11/2018', 'DD/MM/YYYY'));
insert into Participates values
('0013','post-voldemort trauma',3,TO_DATE('11/11/2018', 'DD/MM/YYYY'));
insert into Participates values
('0014','post-voldemort trauma',4,TO_DATE('20/10/2018', 'DD/MM/YYYY'));
insert into Participates values
('0015','Conversations with Merpeople',1,TO_DATE('01/10/2018', 'DD/MM/YYYY'));
insert into Participates values
('0016','Conversations with Merpeople',2,TO_DATE('02/10/2018', 'DD/MM/YYYY'));
insert into Participates values
('0017','Conversations with Merpeople',3,TO_DATE('03/10/2018', 'DD/MM/YYYY'));
insert into Participates values
('0018','Conversations with Merpeople',4,TO_DATE('04/10/2018', 'DD/MM/YYYY'));
insert into Participates values
('0019','De-depress Demontors',1,TO_DATE('05/10/2018', 'DD/MM/YYYY'));
insert into Participates values
('0020','De-depress Demontors',2,TO_DATE('06/10/2018', 'DD/MM/YYYY'));

insert into Makes_Booking values
('post-voldemort trauma',1,'8908');
insert into Makes_Booking values
('post-voldemort trauma',2,'8908');
insert into Makes_Booking values
('post-voldemort trauma',3,'8908');
insert into Makes_Booking values
('post-voldemort trauma',4,'8908');
insert into Makes_Booking values
('Conversations with Merpeople',1,'1124');
insert into Makes_Booking values
('Conversations with Merpeople',2,'1124');
insert into Makes_Booking values
('Conversations with Merpeople',3,'1124');
insert into Makes_Booking values
('Conversations with Merpeople',4,'1124');
insert into Makes_Booking values
('De-depress Demontors',1,'1124');
insert into Makes_Booking values
('De-depress Demontors',2,'1124');


commit work;