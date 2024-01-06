-- Card Holder
CREATE TABLE CardHolder (
    ID INT AUTO_INCREMENT NOT NULL, 
    Name VARCHAR(50) NOT NULL,
    CONSTRAINT PKCardHolder PRIMARY KEY (ID)
);

-- Credit Card
CREATE TABLE CreditCard (
    Card VARCHAR(20) NOT NULL,
    IDCardHolder INT NOT NULL,
    CONSTRAINT PKCreditCard PRIMARY KEY (Card)
);

-- Merchant
CREATE TABLE Merchant (
    ID INT AUTO_INCREMENT NOT NULL,
    Name VARCHAR(255) NOT NULL,
    IDMerchantCategory INT NOT NULL,
    CONSTRAINT PKMerchant PRIMARY KEY (ID)
);

-- Merchant Category 
CREATE TABLE MerchantCategory (
    ID INT AUTO_INCREMENT NOT NULL,
    NAME VARCHAR(50) NOT NULL, 
    CONSTRAINT PKMerchantCategory PRIMARY KEY (ID)
);

-- Transaction 
CREATE TABLE Transaction (
    ID INT AUTO_INCREMENT NOT NULL,
    DATE TIMESTAMP NOT NULL,
    AMOUNT FLOAT NOT NULL,
    CARD VARCHAR(20) NOT NULL,
    IDMerchant INT NOT NULL,
    CONSTRAINT PKTransaction PRIMARY KEY (ID)
);

ALTER TABLE CreditCard ADD CONSTRAINT FKCreditCardHolder FOREIGN KEY (IDCardHolder)
    REFERENCES CardHolder (ID);

ALTER TABLE CreditCard ADD CONSTRAINT CheckCreditCardLength CHECK (CHAR_LENGTH(Card) <= 20);

ALTER TABLE Merchant ADD CONSTRAINT FKMerchantIDMerchantCategory FOREIGN KEY (IDMerchantCategory)
    REFERENCES MerchantCategory (ID);

ALTER TABLE Transaction ADD CONSTRAINT FKTransactionCard FOREIGN KEY (Card)
    REFERENCES CreditCard (Card);

ALTER TABLE Transaction ADD CONSTRAINT FKTransactionIDMerchant FOREIGN KEY (IDMerchant)
    REFERENCES Merchant (ID);


