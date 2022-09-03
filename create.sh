#build 
source build/envsetup.sh
lunch lineage_beryllium-user
export TZ=Asia/Delhi
export BUILD_USERNAME=beryllium
export BUILD_HOSTNAME=user
export SKIP_ABI_CHECKS=true
export SKIP_BOOTJAR_CHECKS=true

#
make bacon -j30 #&
#sleep 95m
#kill %1

#until [ $? == 0 ] ;
#do
    #sleep 10
   # make bacon -j30
#done

#trying to fix oom container error
#until [ -f /$WORKDIR/rom/$name_rom/out/target/product/beryllium/*.zip ] ;
#do
     # make bacon -j30
    #  sleep 10
     # echo ROM building complete
#done
      #echo move to other task


# upload rom
