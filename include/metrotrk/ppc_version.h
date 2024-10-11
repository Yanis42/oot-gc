#ifndef _METROTRK_PPC_VERSION_H
#define _METROTRK_PPC_VERSION_H

#define macro_str(x)                #x
#define val_str(x)                  macro_str(x)
#define macro_paste(x, y)           x##y
#define val_paste(x, y)             macro_paste(x, y)
#define version_str(major, minor)   val_str(val_paste(val_paste(major, .), minor))

#define DS_KERNEL_MAJOR_VERSION     0
#define DS_KERNEL_MINOR_VERSION     4

#define DS_KERNEL_VERSION_STRING    version_str(DS_KERNEL_MAJOR_VERSION, \
                                                DS_KERNEL_MINOR_VERSION)

#endif
