create or alter procedure bronze.load_bronze as
begin
print'--------------------------------';
print'loading bronze layer';
print'--------------------------------';

print'--------------------------------';
print'loading crm tables';
print'--------------------------------';
truncate table Bronze.crm_cust_info;

bulk insert Bronze.crm_cust_info
from 'C:\Users\maste\Downloads\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
with (
      firstrow = 2,
      fieldterminator = ',',
      tablock
);



truncate table Bronze.crm_prd_info;

bulk insert Bronze.crm_prd_info
from 'C:\Users\maste\Downloads\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
with (
      firstrow = 2,
      fieldterminator = ',',
      tablock
);

truncate table Bronze.crm_sales_details_info;

bulk insert Bronze.crm_sales_details_info
from 'C:\Users\maste\Downloads\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
with (
      firstrow = 2,
      fieldterminator = ',',
      tablock
);

print'--------------------------------';
print'loading bronze layer';
print'--------------------------------';

truncate table Bronze.erp_cust_az12_info;

bulk insert Bronze.erp_cust_az12_info
from 'C:\Users\maste\Downloads\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'
with (
      firstrow = 2,
      fieldterminator = ',',
      tablock
);

truncate table Bronze.erp_loc_a101_info;

bulk insert Bronze.erp_loc_a101_info
from 'C:\Users\maste\Downloads\sql-data-warehouse-project\datasets\source_erp\loc_a101.csv'
with (
      firstrow = 2,
      fieldterminator = ',',
      tablock
);

truncate table Bronze.erp_px_cat_g1v2_info;

bulk insert Bronze.erp_px_cat_g1v2_info
from 'C:\Users\maste\Downloads\sql-data-warehouse-project\datasets\source_erp\px_cat_g1v2.csv'
with (
      firstrow = 2,
      fieldterminator = ',',
      tablock
);
end
