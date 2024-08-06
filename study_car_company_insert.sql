-- Insert data into CAR_INFORMATIION
INSERT INTO `COMPANY` (`CP_PK`, `CP_NAME`) VALUES
('CP_01', '현대'),
('CP_02', '기아'),
('CP_03', '쉐보레'),
('CP_04', 'BMW'),
('CP_05', '벤츠');

-- Insert data into YEAR
INSERT INTO `MODEL_YEAR` (`YEAR_PK`, `DATE_YEAR`) VALUES
('YEAR_01', '2020'),
('YEAR_02', '2018'),
('YEAR_03', '2019'),
('YEAR_04', '2017'),
('YEAR_05', '2021');

-- Insert data into CAR_NAME
INSERT INTO `CAR_NAME` (`CN_PK`, `CAR_NAME`) VALUES
('CN_01', '소나타'),
('CN_02', '쏘렌토'),
('CN_03', '카마로'),
('CN_04', '3시리즈'),
('CN_05', 'E클래스');

-- Insert data into OPTION
INSERT INTO `OPTIONS` (`OP_PK`, `OPTION`) VALUES
('OP_01', '네비게이션'),
('OP_02', '후방카메라'),
('OP_03', '가죽시트'),
('OP_04', '스마트키'),
('OP_05', '크루즈컨트롤'),
('OP_06', '블루투스'),
('OP_07', '후방감지센서'),
('OP_08', '헤드업디스플레이'),
('OP_09', '전자식 메모리 시트'),
('OP_10', '어댑티브 크루즈컨트롤');

-- Insert data into CAR_INFO_NAME_YEAR
INSERT INTO `CAR_INFO` (`CI_PK`, `CP_FK`, `CN_FK`, `YEAR_FK`) VALUES
('CI_01', 'CP_01', 'CN_01', 'YEAR_01'),
('CI_02', 'CP_02', 'CN_02', 'YEAR_02'),
('CI_03', 'CP_03', 'CN_03', 'YEAR_03'),
('CI_04', 'CP_04', 'CN_04', 'YEAR_04'),
('CI_05', 'CP_05', 'CN_05', 'YEAR_05'),
('CI_06', 'CP_03', 'CN_03', 'YEAR_05'),
('CI_07', 'CP_01', 'CN_01', 'YEAR_02');

-- Insert data into CAR_INFO_OPTIONS
INSERT INTO `CAR_INFO_OPTIONS` (`CI_OP_PK`, `OP_FK`, `CI_FK`) VALUES
('CI_OP_01', 'OP_01', 'CI_01'),
('CI_OP_02', 'OP_02', 'CI_01'),
('CI_OP_03', 'OP_03', 'CI_02'),
('CI_OP_04', 'OP_04', 'CI_02'),
('CI_OP_05', 'OP_05', 'CI_03'),
('CI_OP_06', 'OP_06', 'CI_03'),
('CI_OP_07', 'OP_07', 'CI_04'),
('CI_OP_08', 'OP_08', 'CI_04'),
('CI_OP_09', 'OP_09', 'CI_05'),
('CI_OP_10', 'OP_10', 'CI_05'),
('CI_OP_11', 'OP_06', 'CI_06'),
('CI_OP_12', 'OP_02', 'CI_07'),
('CI_OP_13', 'OP_07', 'CI_07');