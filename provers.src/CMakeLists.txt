set(sources
    actions.c
    demodulate.c
    foffer.c
    forward_subsume.c
    giv_select.c
    index_lits.c
    pred_elim.c
    provers.c
    search.c
    semantics.c
    unfold.c
    utilities.c
    white_black.c
)

add_executable(prover9 prover9.c ${sources})
target_link_libraries(prover9 ladr)

add_executable(fof-prover9 fof-prover9.c ${sources})
target_link_libraries(fof-prover9 ladr)

add_executable(ladr_to_tptp ladr_to_tptp.c ${sources})
target_link_libraries(ladr_to_tptp ladr)

add_executable(tptp_to_ladr tptp_to_ladr.c ${sources})
target_link_libraries(tptp_to_ladr ladr)

add_executable(autosketches4 autosketches4.c ${sources})
target_link_libraries(autosketches4 ladr)

add_executable(newauto newauto.c ${sources})
target_link_libraries(newauto ladr)

add_executable(newsax newsax.c ${sources})
target_link_libraries(newsax ladr)
