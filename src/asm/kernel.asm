mainMenu:
    call clearTextScreen

    mov si, welcome
    call printString
    
    call getInput

end:
    cli ;; clear interrupts
    hlt ;; halt

    ;;; Includes
    %include "src/functions/print_string.asm"
    %include "src/functions/print_hex.asm"
    %include "src/functions/get_input.asm"
    %include "src/functions/check_commands.asm"
    %include "src/functions/print_file_table.asm"

    %include "src/screen/clear_text_screen.asm"

    %include "src/utility/print_registers.asm"
    %include "src/utility/macros.asm"
    %include "src/utility/vars.asm"

times 1024-($-$$) db 0
