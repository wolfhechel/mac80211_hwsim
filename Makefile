obj-m += mac80211_hwsim.o

all:
		make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
		make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean

install:
		cp -v mac80211_hwsim.ko /lib/modules/$(shell uname -r)/extramodules/
		depmod
