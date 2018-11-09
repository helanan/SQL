# Create Giftcard Account Date Table
CREATE TABLE `giftcard_account_date` (
	`card_no` varchar(19),
    `card_type` varchar(8) default null,
    `time_dim_key` int(8) default null,
    CONSTRAINT card_no PRIMARY KEY (card_no)
)

# Create Giftcard Transaction Detail
CREATE TABLE `giftcard_trans_detail` (
	`time_dim_key` int(8),
    `bank_batch_id` int(22),
    `bank_sequence_number` int(18),
    `store_no` int(4) default null,
    `bank_transaction_date` date default null,
    `transaction_type_code` varchar(3) default null,
    `auth_number` varchar(10) default null,
    `account_number` int(20) default null,
    `card_sku` varchar(12) default null,
    `requested_amount` int(18) default null,
    `auth_amount` int(18) default null,
    `cashback_amount` int(18) default null,
    `balance_amount` int(18) default null,
    `reversal` varchar(1) default null,
    `card_owner_currency_code` varchar(6) default null,
    `trans_amount` int(18) default null,
    `mod_date_time` date default null,
    PRIMARY KEY (time_dim_key, bank_batch_id, bank_sequence_number)
)

select * FROM giftcard_trans_detail;