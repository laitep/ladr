set(objects
    estack.c
    util.c
    print.c
    syms.c
    ground.c
    arithmetic.c
    select.c
    propagate.c
    mstate.c
    negpropindex.c
    negprop.c
    ordercells.c
    commandline.c
    msearch.c
)

add_library(mace4 STATIC ${objects})

add_executable(mace4_exe mace4.c)
set_property(TARGET mace4_exe PROPERTY OUTPUT_NAME mace4)
target_link_libraries(mace4_exe ladr mace4)
