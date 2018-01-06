insert into <table_name> select * from <table_name_2>;
/* 把当前场次的交易数据结转到交易历史表(提高读写速度) */
insert into tb_deal_history select * from tb_deal_day;