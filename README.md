# opsworks-cookbooks



###laravel::php_mcrypt_enable
This recipe should only be used with the OpsWorks OS Package php5-mcrypt in Ubuntu 14.04. This package is not enable by default and the purpose of this recipe is to run `php5enmod mcrypt` if the file `mcrypt.ini` exisists with in `/etc/php5/mods-available/`.

Use recipe on **Setup** ONLY.



###laravel::permission
This recipe should only be used with the OpsWorks setup laravel storage permission

Use recipe on **Depoly** ONLY.