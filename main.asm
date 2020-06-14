Label_12:            jmp Label_0 ; desvia para uma função
                     jmp Label_1 
                     jmp Label_1 
                     jmp Label_1 
                     jmp Label_1 
                     jmp Label_1 
                     jmp Label_1 
                     jmp Label_1 
                     jmp Label_1 
                     jmp Label_1 
                     jmp Label_1 
                     jmp Label_1 
                     jmp Label_1 
                     jmp Label_1 
                     jmp Label_1 
                     jmp Label_1 
                     jmp Label_2 
                     jmp Label_1 
                     jmp Label_1 
                     jmp Label_1 
                     jmp Label_1 
                     jmp Label_1 
                     jmp Label_1 
                     jmp Label_1 
                     jmp Label_1 
                     jmp Label_1 
                     nop 
                     nop 
                   
                     nop 
                     nop 
                    
                     nop 
                     sbc r0, r0 ; subtrai 1 no registro da flag
                     muls r16, r16 
                     
                     mulsu r16, r16 
                     cpc r16, r20 ; compara os valores dos registradores
                     nop 
                     nop 
                     nop 
                     nop 
                     nop 
                     nop 
                   
                     cpc r0, r4 
                     cpc r0, r4 
                     cpc r0, r4 
                     cpc r0, r4 
                     muls r16, r18 
                     muls r16, r18 
                     muls r16, r18 
                     mulsu r16, r19 
                     mulsu r16, r19 
                     mulsu r16, r19 
                     muls r16, r17 
                     sbc r0, r4 
                     and r1, r0 
                     ld r4, Z 
                     muls r16, r17 
                     sbc r0, r4 
                     and r1, r0 
                     muls r16, r17 
                     sbc r0, r4 
                     and r1, r0 
                     cpc r15, r7 
Label_0:             eor r1, r1 
                     out SREG, r1 
                     ser r28 
                     ldi r29, 0x08 
                     out SPH, r29 
                     out SPL, r28 
                     ldi r17, 0x01 
                     ldi r26, 0x00 
                     ldi r27, 0x01 
                     ldi r30, 0xEC 
                     ldi r31, 0x0C 
                     rjmp Label_3 
Label_4:             lpm r0, Z+ 
                     st X+, r0 
Label_3:             cpi r26, 0x6E 
                     cpc r27, r17 
                     brne Label_4 ; funciona como um else caso a comparação não de igual
                     ldi r18, 0x01 
                     ldi r26, 0x6E 
                     ldi r27, 0x01 
                     rjmp Label_5 
Label_6:             st X+, r1 
Label_5:             cpi r26, 0x95 
                     cpc r27, r18 
                     brne Label_6 
                     ldi r17, 0x00 
                     ldi r28, 0x62 
                     ldi r29, 0x00 
                     rjmp Label_7 
Label_9:             sbiw r29:r28, 0x01 
                     movw r31:r30, r29:r28 
                     call Label_8 
Label_7:             cpi r28, 0x61 
                     cpc r29, r17 
                     brne Label_9 
                     call Label_10 
                     jmp Label_11 
Label_1:             jmp Label_12 
Label_76:            push r12 
                     push r13 
                     push r14 
                     push r15 
                     push r16 
                     push r17 
                     push r28 
                     push r29 
                     movw r13:r12, r25:r24 
                     movw r15:r14, r21:r20 
                     movw r17:r16, r23:r22 
                     ldi r28, 0x00 
                     ldi r29, 0x00 
Label_15:            cp r28, r14 
                     cpc r29, r15 
                     breq Label_13 ; funciona como um if comparando se os valores são iguais
                     movw r27:r26, r17:r16 
                     ld r22, X+ 
                     movw r17:r16, r27:r26 
                     movw r27:r26, r13:r12 
                     ld r30, X+ 
                     ld r31, X 
                     ld  r0, Z+ 
                     ld r31, Z 
                     mov r30, r0 
                     movw r25:r24, r13:r12 
                     icall 
                     or r24, r25 
                     brne Label_14 
                     movw r15:r14, r29:r28 
                     rjmp Label_13 
Label_14:            adiw r29:r28, 0x01 
                     rjmp Label_15 
Label_13:            movw r25:r24, r15:r14 
                     pop r29 
                     pop r28 
                     pop r17 
                     pop r16 
                     pop r15 
                     pop r14 
                     pop r13 
                     pop r12 
                     ret 
Label_39:            ldi r25, 0x00 
                     movw r31:r30, r25:r24 
                     subi r30, 0x84; faz a subtração dos registros
                     sbci r31, 0xFF 
                     lpm r19, Z 
                     movw r31:r30, r25:r24 
                     subi r30, 0x52 
                     sbci r31, 0xFF 
                     lpm r18, Z 
                     movw r31:r30, r25:r24 
                     subi r30, 0x66 
                     sbci r31, 0xFF 
                     lpm r30, Z 
                     and r30, r30 
                     brne Label_16 
                     rjmp Label_17 
Label_16:            and r19, r19 
                     breq Label_18 
                     cpi r19, 0x03 
                     breq Label_19 
                     brsh Label_20 
                     cpi r19, 0x01 
                     breq Label_21 
                     cpi r19, 0x02 
                     brne Label_18 
                     in r24, TCCR0A 
                     andi r24, 0xDF 
                     rjmp Label_22 
Label_20:            cpi r19, 0x07 
                     breq Label_23 
                     cpi r19, 0x08 
                     breq Label_24 
                     cpi r19, 0x04 
                     brne Label_18 
                     lds r24, TCCR1A 
                     andi r24, 0xDF 
                     rjmp Label_25 
Label_19:            lds r24, TCCR1A 
                     andi r24, 0x7F 
Label_25:            sts TCCR1A, r24 
                     rjmp Label_18 
Label_21:            in r24, TCCR0A 
                     andi r24, 0x7F 
Label_22:            out TCCR0A, r24 
                     rjmp Label_18 
Label_23:            lds r24, TCCR2A 
                     andi r24, 0x7F 
                     rjmp Label_26 
Label_24:            lds r24, TCCR2A 
                     andi r24, 0xDF 
Label_26:            sts TCCR2A, r24 
Label_18:            ldi r31, 0x00 
                     add r30, r30 
                     adc r31, r31 
                     subi r30, 0x8E 
                     sbci r31, 0xFF 
                     lpm r26, Z+ 
                     lpm r27, Z 
                     in r24, SREG 
                     cli 
                     ld r30, X 
                     cpse r22, r1 
                     rjmp Label_27 
                     com r18 
                     and r18, r30 
                     rjmp Label_28 
Label_27:            or r18, r30 
Label_28:            st X, r18 
                     out SREG, r24 
Label_17:            ret 
Label_58:            push r28 
                     push r29 
                     ldi r25, 0x00 
                     movw r31:r30, r25:r24 
                     subi r30, 0x52 
                     sbci r31, 0xFF 
                     lpm r18, Z 
                     movw r31:r30, r25:r24 
                     subi r30, 0x66 
                     sbci r31, 0xFF 
                     lpm r24, Z 
                     and r24, r24 
                     breq Label_29 
                     ldi r25, 0x00 
                     add r24, r24 
                     adc r25, r25 
                     movw r31:r30, r25:r24 
                     subi r30, 0x98 
                     sbci r31, 0xFF 
                     lpm r28, Z+ 
                     lpm r29, Z 
                     movw r31:r30, r25:r24 
                     subi r30, 0x8E 
                     sbci r31, 0xFF 
                     lpm r26, Z+ 
                     lpm r27, Z 
                     cpse r22, r1 
                     rjmp Label_30 
                     in r25, SREG 
                     cli 
                     ld r24, Y 
                     com r18 
                     and r24, r18 
                     st Y, r24 
                     ld r30, X 
                     and r18, r30 
                     rjmp Label_31 
Label_30:            cpi r22, 0x02 
                     brne Label_32 
                     in r25, SREG 
                     cli 
                     ld r19, Y 
                     mov r24, r18 
                     com r24 
                     and r24, r19 
                     st Y, r24 
                     ld r30, X 
                     or r18, r30 
Label_31:            st X, r18 
                     out SREG, r25 
                     rjmp Label_29 
Label_32:            in r24, SREG 
                     cli 
                     ld r30, Y 
                     or r18, r30 
                     st Y, r18 
                     out SREG, r24 
Label_29:            pop r29 
                     pop r28 
                     ret 
Label_35:            in r19, SREG 
                     cli 
                     lds r24, 0x0173 
                     lds r25, 0x0174 
                     lds r26, 0x0175 
                     lds r27, 0x0176 
                     in r18, TCNT0 
                     sbis TIFR0, TOV0 
                     rjmp Label_33 
                     cpi r18, 0xFF 
                     breq Label_33 
                     adiw r25:r24, 0x01 
                     adc r26, r1 
                     adc r27, r1 
Label_33:            out SREG, r19 
                     mov r27, r26 
                     mov r26, r25 
                     mov r25, r24 
                     eor r24, r24 
                     add r24, r18 
                     adc r25, r1 
                     adc r26, r1 
                     adc r27, r1 
                     movw r23:r22, r25:r24 
                     movw r25:r24, r27:r26 
                     ldi r20, 0x02 
Label_34:            add r22, r22 
                     adc r23, r23 
                     adc r24, r24 
                     adc r25, r25 
                     dec r20 
                     brne Label_34 
                     ret 
Label_90:            push r8 
                     push r9 
                     push r10 
                     push r11 
                     push r12 
                     push r13 
                     push r14 
                     push r15 
                     movw r13:r12, r23:r22 
                     movw r15:r14, r25:r24 
                     call Label_35 
                     movw r9:r8, r23:r22 
                     movw r11:r10, r25:r24 
Label_37:            cp r12, r1 
                     cpc r13, r1 
                     cpc r14, r1 
                     cpc r15, r1 
                     breq Label_36 
Label_38:            call Label_35 
                     movw r27:r26, r25:r24 
                     movw r25:r24, r23:r22 
                     sub r24, r8 
                     sbc r25, r9 
                     sbc r26, r10 
                     sbc r27, r11 
                     cpi r24, 0xE8 
                     sbci r25, 0x03 
                     cpc r26, r1 
                     cpc r27, r1 
                     brlo Label_37 
                     ldi r18, 0x01 
                     sub r12, r18 
                     sbc r13, r1 
                     sbc r14, r1 
                     sbc r15, r1 
                     ldi r24, 0xE8 
                     add r8, r24 
                     ldi r24, 0x03 
                     adc r9, r24 
                     adc r10, r1 
                     adc r11, r1 
                     cp r12, r1 
                     cpc r13, r1 
                     cpc r14, r1 
                     cpc r15, r1 
                     brne Label_38 
                     rjmp Label_37 
Label_36:            pop r15 
                     pop r14 
                     pop r13 
                     pop r12 
                     pop r11 
                     pop r10 
                     pop r9 
                     pop r8 
                     ret 
Label_44:            push r28 
                     push r29 
                     movw r29:r28, r25:r24 
                     ldi r22, 0x00 
                     ldd r24, Y+6 
                     call Label_39 
                     ldi r22, 0x01 
                     ldd r24, Y+6 
                     call Label_39 
                     ldi r22, 0x00 
                     ldd r24, Y+6 
                     call Label_39 
                     ldi r24, 0x8B 
                     ldi r25, 0x01 
Label_40:            sbiw r25:r24, 0x01 
                     brne Label_40 
                     pop r29 
                     pop r28 
                     ret 
Label_51:            push r12 
                     push r13 
                     push r14 
                     push r15 
                     push r16 
                     push r17 
                     push r28 
                     push r29 
                     movw r15:r14, r25:r24 
                     movw r13:r12, r25:r24 
                     ldi r24, 0x07 
                     add r12, r24 
                     adc r13, r1 
                     ldi r28, 0x00 
                     ldi r29, 0x00 
                     mov r16, r22 
                     ldi r17, 0x00 
Label_43:            movw r23:r22, r17:r16 
                     mov r0, r28 
                     rjmp Label_41 
Label_42:            asr r23 
                     ror r22 
Label_41:            dec r0 
                     brpl Label_42 
                     andi r22, 0x01 
                     movw r31:r30, r13:r12 
                     ld  r24, Z+ 
                     movw r13:r12, r31:r30 
                     call Label_39 
                     adiw r29:r28, 0x01 
                     cpi r28, 0x04 
                     cpc r29, r1 
                     brne Label_43 
                     movw r25:r24, r15:r14 
                     pop r29 
                     pop r28 
                     pop r17 
                     pop r16 
                     pop r15 
                     pop r14 
                     pop r13 
                     pop r12 
                     jmp Label_44 
Label_52:            push r12 
                     push r13 
                     push r14 
                     push r15 
                     push r16 
                     push r17 
                     push r28 
                     push r29 
                     movw r29:r28, r25:r24 
                     mov r15, r22 
                     mov r22, r20 
                     ldd r24, Y+4 
                     call Label_39 
                     ldd r24, Y+5 
                     cpi r24, 0xFF 
                     breq Label_45 
                     ldi r22, 0x00 
                     call Label_39 
Label_45:            ldd r24, Y+15 
                     mov r16, r15 
                     ldi r17, 0x00 
                     sbrs r24, 4 
                     rjmp Label_46 
                     movw r13:r12, r29:r28 
                     ldi r24, 0x07 
                     add r12, r24 
                     adc r13, r1 
                     mov r14, r1 
                     mov r15, r1 
Label_49:            movw r23:r22, r17:r16 
                     mov r0, r14 
                     rjmp Label_47 
Label_48:            asr r23 
                     ror r22 
Label_47:            dec r0 
                     brpl Label_48 
                     andi r22, 0x01 
                     movw r31:r30, r13:r12 
                     ld  r24, Z+ 
                     movw r13:r12, r31:r30 
                     call Label_39 
                     ser r31 
                     sub r14, r31 
                     sbc r15, r31 
                     ldi r24, 0x08 
                     cp r14, r24 
                     cpc r15, r1 
                     brne Label_49 
                     movw r25:r24, r29:r28 
                     pop r29 
                     pop r28 
                     pop r17 
                     pop r16 
                     pop r15 
                     pop r14 
                     pop r13 
                     pop r12 
                     jmp Label_44 
Label_46:            movw r23:r22, r17:r16 
                     ldi r24, 0x04 
Label_50:            asr r23 
                     ror r22 
                     dec r24 
                     brne Label_50 
                     movw r25:r24, r29:r28 
                     call Label_51 
                     mov r22, r15 
                     movw r25:r24, r29:r28 
                     pop r29 
                     pop r28 
                     pop r17 
                     pop r16 
                     pop r15 
                     pop r14 
                     pop r13 
                     pop r12 
                     jmp Label_51 
                     ldi r20, 0x01 
                     call Label_52 
                     ldi r24, 0x01 
                     ldi r25, 0x00 
                     ret 
Label_55:            ldi r20, 0x00 
                     jmp Label_52 
Label_88:            cpi r24, 0x04 
                     brlo Label_53 
                     ldi r24, 0x03 
Label_53:            lds r25, 0x0190 
                     cp r24, r25 
                     brlo Label_54 
                     ser r24 
                     add r24, r25 
Label_54:            mov r30, r24 
                     ldi r31, 0x00 
                     subi r30, 0x83 
                     sbci r31, 0xFE 
                     ldd r22, Z+20 
                     sbr r22, 0x80 
                     ldi r24, 0x7D 
                     ldi r25, 0x01 
                     jmp Label_55 
Label_73:            ldi r22, 0x01 
                     call Label_55 
                     ldi r24, 0x3B 
                     ldi r25, 0x1F 
Label_56:            sbiw r25:r24, 0x01 
                     brne Label_56 
                     ret 
Label_87:            push r14 
                     push r15 
                     push r16 
                     push r17 
                     push r28 
                     push r29 
                     movw r29:r28, r25:r24 
                     cpi r22, 0x02 
                     brlo Label_57 
                     ldd r24, Y+15 
                     sbr r24, 0x08 
                     std Y+15, r24 
Label_57:            std Y+19, r22 
                     std Y+20, r1 
                     ldi r24, 0x40 
                     std Y+21, r24 
                     ldi r24, 0x10 
                     std Y+22, r24 
                     ldi r24, 0x50 
                     std Y+23, r24 
                     ldi r22, 0x01 
                     ldd r24, Y+4 
                     call Label_58 
                     ldd r24, Y+5 
                     cpi r24, 0xFF 
                     breq Label_59 
                     ldi r22, 0x01 
                     call Label_58 
Label_59:            ldi r22, 0x01 
                     ldd r24, Y+6 
                     call Label_58 
                     movw r15:r14, r29:r28 
                     ldi r24, 0x07 
                     add r14, r24 
                     adc r15, r1 
                     ldi r16, 0x00 
                     ldi r17, 0x00 
Label_63:            ldd r24, Y+15 
                     sbrc r24, 4 
                     rjmp Label_60 
                     ldi r24, 0x04 
                     ldi r25, 0x00 
                     rjmp Label_61 
Label_60:            ldi r24, 0x08 
                     ldi r25, 0x00 
Label_61:            cp r16, r24 
                     cpc r17, r25 
                     brge Label_62 
                     ldi r22, 0x01 
                     movw r31:r30, r15:r14 
                     ld  r24, Z+ 
                     movw r15:r14, r31:r30 
                     call Label_58 
                     subi r16, 0xFF 
                     sbci r17, 0xFF 
                     rjmp Label_63 
Label_62:            ldi r24, 0x3B 
                     ldi r25, 0x0D 
Label_64:            sbiw r25:r24, 0x01 
                     brne Label_64 
                     ldi r22, 0x00 
                     ldd r24, Y+4 
                     call Label_39 
                     ldi r22, 0x00 
                     ldd r24, Y+6 
                     call Label_39 
                     ldd r24, Y+5 
                     cpi r24, 0xFF 
                     breq Label_65 
                     ldi r22, 0x00 
                     call Label_39 
Label_65:            ldd r22, Y+15 
                     sbrc r22, 4 
                     rjmp Label_66 
                     ldi r22, 0x03 
                     movw r25:r24, r29:r28 
                     call Label_51 
                     ldi r16, 0x4B 
                     ldi r17, 0x46 
                     movw r25:r24, r17:r16 
Label_67:            sbiw r25:r24, 0x01 
                     brne Label_67 
                     ldi r22, 0x03 
                     movw r25:r24, r29:r28 
                     call Label_51 
                     movw r25:r24, r17:r16 
Label_68:            sbiw r25:r24, 0x01 
                     brne Label_68 
                     ldi r22, 0x03 
                     movw r25:r24, r29:r28 
                     call Label_51 
                     ldi r24, 0x53 
                     ldi r25, 0x02 
Label_69:            sbiw r25:r24, 0x01 
                     brne Label_69 
                     ldi r22, 0x02 
                     movw r25:r24, r29:r28 
                     call Label_51 
                     rjmp Label_70 
Label_66:            sbr r22, 0x20 
                     movw r25:r24, r29:r28 
                     call Label_55 
                     ldi r24, 0x4B 
                     ldi r25, 0x46 
Label_71:            sbiw r25:r24, 0x01 
                     brne Label_71 
                     ldd r22, Y+15 
                     sbr r22, 0x20 
                     movw r25:r24, r29:r28 
                     call Label_55 
                     ldi r24, 0x53 
                     ldi r25, 0x02 
Label_72:            sbiw r25:r24, 0x01 
                     brne Label_72 
                     ldd r22, Y+15 
                     sbr r22, 0x20 
                     movw r25:r24, r29:r28 
                     call Label_55 
Label_70:            ldd r22, Y+15 
                     sbr r22, 0x20 
                     movw r25:r24, r29:r28 
                     call Label_55 
                     ldi r24, 0x04 
                     std Y+16, r24 
                     ldi r22, 0x0C 
                     movw r25:r24, r29:r28 
                     call Label_55 
                     movw r25:r24, r29:r28 
                     call Label_73 
                     ldi r24, 0x02 
                     std Y+17, r24 
                     ldi r22, 0x06 
                     movw r25:r24, r29:r28 
                     pop r29 
                     pop r28 
                     pop r17 
                     pop r16 
                     pop r15 
                     pop r14 
                     jmp Label_55 
                     ret 
                     ldi r24, 0x00 
                     ldi r25, 0x00 
                     ret 
Label_89:            sbiw r25:r24, 0x00 
                     breq Label_74 
                     movw r31:r30, r25:r24 
Label_75:            ld  r0, Z+ 
                     and r0, r0 
                     brne Label_75 
                     sbiw r31:r30, 0x01 
                     movw r21:r20, r31:r30 
                     sub r20, r24 
                     sbc r21, r25 
                     movw r23:r22, r25:r24 
                     ldi r24, 0x7D 
                     ldi r25, 0x01 
                     jmp Label_76 
Label_74:            ldi r24, 0x00 
                     ldi r25, 0x00 
                     ret 
                     call Label_77 
Label_2:             push r1 
                     push r0 
                     in r0, SREG 
                     push r0 
                     eor r1, r1 
                     push r18 
                     push r19 
                     push r24 
                     push r25 
                     push r26 
                     push r27 
                     lds r24, 0x016F 
                     lds r25, 0x0170 
                     lds r26, 0x0171 
                     lds r27, 0x0172 
                     lds r19, 0x016E 
                     ldi r18, 0x03 
                     add r18, r19 
                     cpi r18, 0x7D 
                     brsh Label_78 
                     adiw r25:r24, 0x01 
                     adc r26, r1 
                     adc r27, r1 
                     rjmp Label_79 
Label_78:            ldi r18, 0x86 
                     add r18, r19 
                     adiw r25:r24, 0x02 
                     adc r26, r1 
                     adc r27, r1 
Label_79:            sts 0x016E, r18 
                     sts 0x016F, r24 
                     sts 0x0170, r25 
                     sts 0x0171, r26 
                     sts 0x0172, r27 
                     lds r24, 0x0173 
                     lds r25, 0x0174 
                     lds r26, 0x0175 
                     lds r27, 0x0176 
                     adiw r25:r24, 0x01 
                     adc r26, r1 
                     adc r27, r1 
                     sts 0x0173, r24 
                     sts 0x0174, r25 
                     sts 0x0175, r26 
                     sts 0x0176, r27 
                     pop r27 
                     pop r26 
                     pop r25 
                     pop r24 
                     pop r19 
                     pop r18 
                     pop r0 
                     out SREG, r0 
                     pop r0 
                     pop r1 
                     reti 
Label_93:            push r12 
                     push r13 
                     push r14 
                     push r15 
                     push r16 
                     push r17 
                     mov r30, r24 
                     mov r31, r25 
                     rjmp Label_80 
Label_82:            subi r16, 0x01 
                     sbc r17, r1 
                     sbc r18, r1 
                     sbc r19, r1 
                     breq Label_81 
Label_80:            ld r25, Z 
                     and r25, r22 
                     cp r25, r20 
                     breq Label_82 
                     rjmp Label_83 
Label_84:            subi r16, 0x01 
                     sbc r17, r1 
                     sbc r18, r1 
                     sbc r19, r1 
                     breq Label_81 
Label_83:            ld r25, Z 
                     and r25, r22 
                     cpse r25, r20 
                     rjmp Label_84 
                     mov r12, r1 
                     mov r13, r1 
                     mov r14, r1 
                     mov r15, r1 
                     rjmp Label_85 
Label_86:            ser r24 
                     sub r12, r24 
                     sbc r13, r24 
                     sbc r14, r24 
                     sbc r15, r24 
                     cp r16, r12 
                     cpc r17, r13 
                     cpc r18, r14 
                     cpc r19, r15 
                     breq Label_81 
Label_85:            ld r24, Z 
                     and r24, r22 
                     cp r24, r20 
                     breq Label_86 
                     mov r22, r12 
                     mov r23, r13 
                     mov r24, r14 
                     mov r25, r15 
                     pop r17 
                     pop r16 
                     pop r15 
                     pop r14 
                     pop r13 
                     pop r12 
                     ret 
Label_81:            ldi r22, 0x00 
                     ldi r23, 0x00 
                     ldi r24, 0x00 
                     ldi r25, 0x00 
                     pop r17 
                     pop r16 
                     pop r15 
                     pop r14 
                     pop r13 
                     pop r12 
                     ret 
Label_10:            push r28 
                     push r29 
                     in r28, SPL 
                     in r29, SPH 
                     sbiw r29:r28, 0x21 
                     in r0, SREG 
                     cli 
                     out SPH, r29 
                     out SREG, r0 
                     out SPL, r28 
                     sei 
                     in r24, TCCR0A 
                     sbr r24, 0x02 
                     out TCCR0A, r24 
                     in r24, TCCR0A 
                     sbr r24, 0x01 
                     out TCCR0A, r24 
                     in r24, TCCR0B 
                     sbr r24, 0x02 
                     out TCCR0B, r24 
                     in r24, TCCR0B 
                     sbr r24, 0x01 
                     out TCCR0B, r24 
                     lds r24, TIMSK0 
                     sbr r24, 0x01 
                     sts TIMSK0, r24 
                     sts TCCR1B, r1 
                     lds r24, TCCR1B 
                     sbr r24, 0x02 
                     sts TCCR1B, r24 
                     lds r24, TCCR1B 
                     sbr r24, 0x01 
                     sts TCCR1B, r24 
                     lds r24, TCCR1A 
                     sbr r24, 0x01 
                     sts TCCR1A, r24 
                     lds r24, TCCR2B 
                     sbr r24, 0x04 
                     sts TCCR2B, r24 
                     lds r24, TCCR2A 
                     sbr r24, 0x01 
                     sts TCCR2A, r24 
                     lds r24, ADCSRA 
                     sbr r24, 0x04 
                     sts ADCSRA, r24 
                     lds r24, ADCSRA 
                     sbr r24, 0x02 
                     sts ADCSRA, r24 
                     lds r24, ADCSRA 
                     sbr r24, 0x01 
                     sts ADCSRA, r24 
                     lds r24, ADCSRA 
                     sbr r24, 0x80 
                     sts ADCSRA, r24 
                     sts UCSR0B, r1 
                     ldi r22, 0x02 
                     ldi r24, 0x7D 
                     ldi r25, 0x01 
                     call Label_87 
                     ldi r22, 0x01 
                     ldi r24, 0x0C 
                     call Label_58 
                     ldi r22, 0x00 
                     ldi r24, 0x0B 
                     call Label_58 
                     ldi r24, 0x00 
                     call Label_88 
                     ldi r24, 0x0C 
                     ldi r25, 0x01 
                     call Label_89 
                     ldi r24, 0x01 
                     call Label_88 
                     ldi r24, 0x1D 
                     ldi r25, 0x01 
                     call Label_89 
                     ldi r22, 0xD0 
                     ldi r23, 0x07 
                     ldi r24, 0x00 
                     ldi r25, 0x00 
                     call Label_90 
                     ldi r24, 0x7D 
                     ldi r25, 0x01 
                     call Label_73 
                     ldi r24, 0x00 
                     call Label_88 
                     ldi r24, 0x2B 
                     ldi r25, 0x01 
                     call Label_89 
                     ldi r24, 0x01 
                     call Label_88 
                     ldi r24, 0x3B 
                     ldi r25, 0x01 
                     call Label_89 
                     ldi r22, 0xD0 
                     ldi r23, 0x07 
                     ldi r24, 0x00 
                     ldi r25, 0x00 
                     call Label_90 
                     ldi r24, 0x7D 
                     ldi r25, 0x01 
                     call Label_73 
                     ldi r18, 0x03 
                     mov r14, r18 
                     mov r15, r1 
                     ldi r19, 0x23 
                     mov r12, r19 
                     mov r13, r1 
                     ldi r20, 0x0A 
                     mov r2, r20 
                     mov r3, r1 
                     mov r4, r1 
                     mov r5, r1 
Label_106:           ldi r25, 0xA5 
                     mov r6, r25 
                     ldi r25, 0x00 
                     mov r7, r25 
Label_105:           ldi r22, 0x00 
                     ldi r24, 0x0C 
                     call Label_39 
                     movw r25:r24, r15:r14 
Label_91:            sbiw r25:r24, 0x01 
                     brne Label_91 
                     ldi r22, 0x01 
                     ldi r24, 0x0C 
                     call Label_39 
                     movw r25:r24, r13:r12 
Label_92:            sbiw r25:r24, 0x01 
                     brne Label_92 
                     ldi r22, 0x00 
                     ldi r24, 0x0C 
                     call Label_39 
                     ldi r30, 0xB9 
                     ldi r31, 0x00 
                     lpm r22, Z 
                     movw r31:r30, r7:r6 
                     lpm r24, Z 
                     mov r30, r24 
                     ldi r31, 0x00 
                     add r30, r30 
                     adc r31, r31 
                     subi r30, 0x70 
                     sbci r31, 0xFF 
                     lpm r24, Z+ 
                     lpm r25, Z 
                     ldi r16, 0x40 
                     ldi r17, 0x42 
                     ldi r18, 0x0F 
                     ldi r19, 0x00 
                     mov r20, r22 
                     call Label_93 
                     cp r22, r1 
                     cpc r23, r1 
                     cpc r24, r1 
                     cpc r25, r1 
                     breq Label_94 
                     movw r27:r26, r25:r24 
                     movw r25:r24, r23:r22 
                     adiw r25:r24, 0x01 
                     adc r26, r1 
                     adc r27, r1 
                     movw r23:r22, r25:r24 
                     movw r25:r24, r27:r26 
                     andi r25, 0x0F 
                     rjmp Label_95 
Label_94:            ldi r22, 0x00 
                     ldi r23, 0x00 
                     movw r25:r24, r23:r22 
Label_95:            sts 0x0179, r22 
                     sts 0x017A, r23 
                     sts 0x017B, r24 
                     sts 0x017C, r25 
                     call Label_96 
                     ldi r18, 0x96 
                     ldi r19, 0x43 
                     ldi r20, 0x0B 
                     ldi r21, 0x3D 
                     call Label_97 
                     ldi r18, 0x00 
                     ldi r19, 0x00 
                     ldi r20, 0x00 
                     ldi r21, 0x3F 
                     call Label_97 
                     call Label_98 
                     sts 0x0178, r23 
                     sts 0x0177, r22 
                     ldi r24, 0x00 
                     call Label_88 
                     ldi r24, 0x4C 
                     ldi r25, 0x01 
                     call Label_89 
                     ldi r22, 0x0A 
                     ldi r23, 0x00 
                     ldi r24, 0x00 
                     ldi r25, 0x00 
                     call Label_90 
                     ldi r24, 0x01 
                     call Label_88 
                     ldi r24, 0x5D 
                     ldi r25, 0x01 
                     call Label_89 
                     lds r18, 0x0177 
                     lds r19, 0x0178 
                     movw r9:r8, r19:r18 
                     add r19, r19 
                     sbc r10, r10 
                     sbc r11, r11 
                     sbrs r11, 7 
                     rjmp Label_99 
                     lds r30, 0x017D 
                     lds r31, 0x017E 
                     ld  r0, Z+ 
                     ld r31, Z 
                     mov r30, r0 
                     ldi r22, 0x2D 
                     ldi r24, 0x7D 
                     ldi r25, 0x01 
                     icall 
                     eor r18, r18 
                     eor r19, r19 
                     movw r21:r20, r19:r18 
                     sub r18, r8 
                     sbc r19, r9 
                     sbc r20, r10 
              
		    sbc r21, r11                      
                     movw r17:r16, r29:r28 
                     subi r16, 0xDF 
                     sbci r17, 0xFF 
Label_101:           movw r25:r24, r21:r20 
                     movw r23:r22, r19:r18 
                     movw r21:r20, r5:r4 
                     movw r19:r18, r3:r2 
                     call Label_100 
                     subi r22, 0xD0 
                     movw r31:r30, r17:r16 
                     st -Z, r22 
                     movw r17:r16, r31:r30 
                     cp r18, r1 
                     cpc r19, r1 
                     cpc r20, r1 
                     cpc r21, r1 
                     brne Label_101 
                     rjmp Label_102 
Label_99:            movw r21:r20, r11:r10 
		    
                     movw r19:r18, r9:r8                       
                     movw r17:r16, r29:r28 
                     subi r16, 0xDF 
                     sbci r17, 0xFF 
Label_103:           movw r25:r24, r21:r20 
                     movw r23:r22, r19:r18 
                     movw r21:r20, r5:r4 
                     movw r19:r18, r3:r2 
                     call Label_100 
                     subi r22, 0xD0 
                     movw r31:r30, r17:r16 
                     st -Z, r22 
                     movw r17:r16, r31:r30 
                     cp r18, r1 
                     cpc r19, r1 
                     cpc r20, r1 
                     cpc r21, r1 
                     brne Label_103 
Label_102:           movw r25:r24, r17:r16 
                     call Label_89 
                     ldi r24, 0x69 
                     ldi r25, 0x01 
                     call Label_89 
                     ldi r22, 0x0A 
                     ldi r23, 0x00 
                     ldi r24, 0x00 
                     ldi r25, 0x00 
                     call Label_90 
                     ldi r24, 0x00 
                     ldi r25, 0x00 
                     or r24, r25 
                     brne Label_104 
                     rjmp Label_105 
Label_104:           call Label_12 
                     rjmp Label_106 
                     ldi r30, 0x7D 
                     ldi r31, 0x01 
                     std Z+3, r1 
                     std Z+2, r1 
                     ldi r24, 0x04 
                     ldi r25, 0x01 
                     std Z+1, r25 
                     st Z, r24 
                     ldi r24, 0x02 
                     std Z+4, r24 
                     ser r24 
                     std Z+5, r24 
                     ldi r24, 0x03 
                     std Z+6, r24 
                     ldi r24, 0x04 
                     std Z+7, r24 
                     ldi r24, 0x05 
                     std Z+8, r24 
                     ldi r24, 0x06 
                     std Z+9, r24 
                     ldi r24, 0x07 
                     std Z+10, r24 
                     std Z+11, r1 
                     std Z+12, r1 
                     std Z+13, r1 
                     std Z+14, r1 
                     std Z+15, r1 
                     ldi r22, 0x01 
                     movw r25:r24, r31:r30 
                     jmp Label_87 
Label_98:            call Label_107 
                     set 
                     cpse r27, r1 
                     jmp Label_108 
                     ret 
Label_107:           call Label_109 
                     brlo Label_110 
                     subi r25, 0x7F 
                     brlo Label_111 
                     mov r27, r25 
                     eor r25, r25 
                     subi r27, 0x17 
                     brlo Label_112 
                     breq Label_113 
Label_115:           add r22, r22 
                     adc r23, r23 
                     adc r24, r24 
                     adc r25, r25 
                     brmi Label_114 
                     dec r27 
                     brne Label_115 
                     rjmp Label_113 
Label_114:           cpi r27, 0x01 
                     breq Label_113 
Label_110:           call Label_116 
                     ldi r27, 0x01 
                     ret 
Label_111:           jmp Label_116 
Label_117:           mov r22, r23 
                     mov r23, r24 
                     eor r24, r24 
                     subi r27, 0xF8 
                     breq Label_113 
Label_112:           cpi r27, 0xF9 
                     brlt Label_117 
Label_118:           lsr r24 
                     ror r23 
                     ror r22 
                     inc r27 
                     brne Label_118 
Label_113:           brtc Label_119 
                     com r25 
                     com r24 
                     com r23 
                     neg r22 
                     sbci r23, 0xFF 
                     sbci r24, 0xFF 
                     sbci r25, 0xFF 
Label_119:           ret 
                     clt 
                     rjmp Label_120 
Label_96:            bst r25, 7 
                     brtc Label_120 
                     com r25 
                     com r24 
                     com r23 
                     neg r22 
                     sbci r23, 0xFF 
                     sbci r24, 0xFF 
                     sbci r25, 0xFF 
Label_120:           and r25, r25 
                     breq Label_121 
                     mov r31, r25 
                     ldi r25, 0x96 
                     eor r27, r27 
Label_122:           inc r25 
                     lsr r31 
                     ror r24 
                     ror r23 
                     ror r22 
                     ror r27 
                     cpse r31, r1 
                     rjmp Label_122 
                     brpl Label_123 
                     add r27, r27 
                     brne Label_124 
                     sbrs r22, 0 
                     rjmp Label_123 
Label_124:           subi r22, 0xFF 
                     sbci r23, 0xFF 
                     sbci r24, 0xFF 
                     sbci r25, 0xFF 
                     rjmp Label_123 
Label_121:           and r24, r24 
                     breq Label_125 
                     ldi r25, 0x96 
                     rjmp Label_126 
Label_125:           and r23, r23 
                     breq Label_127 
                     ldi r25, 0x8E 
                     mov r24, r23 
                     mov r23, r22 
                     rjmp Label_128 
Label_127:           and r22, r22 
                     breq Label_129 
                     ldi r25, 0x86 
                     mov r24, r22 
                     ldi r23, 0x00 
Label_128:           ldi r22, 0x00 
                     brmi Label_123 
Label_130:           dec r25 
                     add r22, r22 
                     adc r23, r23 
                     adc r24, r24 
Label_126:           brpl Label_130 
Label_123:           add r24, r24 
                     lsr r25 
                     ror r24 
                     bld r25, 7 
Label_129:           ret 
Label_145:           sbrc r21, 7 
                     subi r25, 0x80 
                     add r20, r20 
                     adc r21, r21 
                     breq Label_131 
                     cpi r21, 0xFF 
                     breq Label_132 
Label_135:           ror r20 
Label_109:           add r24, r24 
                     bst r25, 7 
                     adc r25, r25 
                     breq Label_133 
                     cpi r25, 0xFF 
                     breq Label_134 
Label_137:           ror r24 
                     ret 
Label_131:           cp r1, r18 
                     cpc r1, r19 
                     cpc r1, r20 
                     adc r21, r21 
                     rjmp Label_135 
Label_132:           lsr r20 
                     rcall Label_109 
                     rjmp Label_136 
Label_133:           cp r1, r22 
                     cpc r1, r23 
                     cpc r1, r24 
                     adc r25, r25 
                     rjmp Label_137 
Label_134:           lsr r24 
                     cpc r23, r1 
                     cpc r22, r1 
Label_136:           sec 
                     ret 
Label_116:           clt 
Label_108:           eor r27, r27 
                     eor r22, r22 
                     eor r23, r23 
                     movw r25:r24, r23:r22 
                     bld r25, 7 
                     ret 
Label_97:            call Label_138 
                     jmp Label_139 
Label_146:           call Label_140 
                     brlo Label_141 
                     call Label_142 
                     brlo Label_141 
                     and r25, r21 
                     breq Label_141 
                     jmp Label_143 
Label_141:           jmp Label_144 
Label_147:           eor r1, r1 
                     jmp Label_108 
Label_138:           call Label_145 
                     brlo Label_146 
                     mul r25, r21 
                     breq Label_147 
                     add r25, r21 
                     ldi r21, 0x00 
                     adc r21, r21 
                     mul r22, r18 
                     movw r31:r30, r1:r0 
                     mul r23, r18 
                     eor r27, r27 
                     add r31, r0 
                     adc r27, r1 
                     mul r22, r19 
                     eor r26, r26 
                     add r31, r0 
                     adc r27, r1 
                     adc r26, r26 
                     mul r22, r20 
                     eor r22, r22 
                     add r27, r0 
                     adc r26, r1 
                     adc r22, r22 
                     mul r24, r18 
                     eor r18, r18 
                     add r27, r0 
                     adc r26, r1 
                     adc r22, r18 
                     mul r23, r19 
                     add r27, r0 
                     adc r26, r1 
                     adc r22, r18 
                     mul r24, r19 
                     add r26, r0 
                     adc r22, r1 
                     adc r18, r18 
                     mul r23, r20 
                     eor r19, r19 
                     add r26, r0 
                     adc r22, r1 
                     adc r18, r19 
                     mul r24, r20 
                     add r22, r0 
                     adc r18, r1 
                     mov r24, r18 
                     mov r23, r22 
                     mov r22, r26 
                     eor r1, r1 
                     subi r25, 0x7F 
                     sbci r21, 0x00 
                     brmi Label_148 
                     breq Label_149 
Label_151:           and r24, r24 
                     brmi Label_150 
                     add r30, r30 
                     adc r31, r31 
                     adc r27, r27 
                     adc r22, r22 
                     adc r23, r23 
                     adc r24, r24 
                     subi r25, 0x01 
                     sbci r21, 0x00 
                     brne Label_151 
Label_150:           cpi r25, 0xFE 
                     cpc r21, r1 
                     brlo Label_149 
                     jmp Label_143 
Label_152:           jmp Label_108 
Label_148:           cpi r21, 0xFF 
                     brlt Label_152 
                     cpi r25, 0xE8 
                     brlt Label_152 
Label_153:           lsr r24 
                     ror r23 
                     ror r22 
                     ror r27 
                     ror r31 
                     ror r30 
                     subi r25, 0xFF 
                     brne Label_153 
Label_149:           or r31, r30 
                     add r24, r24 
                     adc r25, r1 
                     lsr r25 
                     ror r24 
                     bld r25, 7 
                     ret 
Label_143:           bld r25, 7 
                     sbr r25, 0x7F 
                     ldi r24, 0x80 
                     ldi r23, 0x00 
                     ldi r22, 0x00 
                     ret 
Label_144:           ser r25 
                     ldi r24, 0xC0 
                     ret 
Label_140:           eor r0, r0 
                     dec r0 
                     cp r1, r22 
                     cpc r1, r23 
                     cpc r1, r24 
                     cpc r0, r25 
                     ret 
Label_142:           eor r0, r0 
                     dec r0 
                     cp r1, r18 
                     cpc r1, r19 
                     cpc r1, r20 
                     cpc r0, r21 
                     ret 
Label_139:           mov r0, r25 
                     inc r0 
                     add r0, r0 
                     brne Label_154 
                     and r24, r24 
                     brmi Label_155 
Label_154:           add r27, r27 
                     brsh Label_155 
                     or r27, r31 
                     brne Label_156 
                     sbrs r22, 0 
                     rjmp Label_155 
Label_156:           subi r22, 0xFF 
                     sbci r23, 0xFF 
                     sbci r24, 0xFF 
                     sbci r25, 0xFF 
Label_155:           ret 
Label_100:           ldi r26, 0x21 
                     mov r1, r26 
                     sub r26, r26 
                     sub r27, r27 
                     movw r31:r30, r27:r26 
                     rjmp Label_157 
Label_158:           adc r26, r26 
                     adc r27, r27 
                     adc r30, r30 
                     adc r31, r31 
                     cp r26, r18 
                     cpc r27, r19 
                     cpc r30, r20 
                     cpc r31, r21 
                     brlo Label_157 
                     sub r26, r18 
                     sbc r27, r19 
                     sbc r30, r20 
                     sbc r31, r21 
Label_157:           adc r22, r22 
                     adc r23, r23 
                     adc r24, r24 
                     adc r25, r25 
                     dec r1 
                     brne Label_158 
                     com r22 
                     com r23 
                     com r24 
                     com r25 
                     movw r19:r18, r23:r22 
                     movw r21:r20, r25:r24 
                     movw r23:r22, r27:r26 
                     movw r25:r24, r31:r30 
                     ret 
Label_8:             add r30, r30 
                     adc r31, r31 
                     lpm r0, Z+ 
                     lpm r31, Z 
                     mov r30, r0 
                     ijmp 
Label_77:            ldi r24, 0x01 
                     ldi r25, 0x00 
                     cli 
                     jmp Label_11 
Label_11:            cli 
Label_159:           rjmp Label_159 
                     nop 
                     nop 
                     muls r19, r20 
                     
                     muls r31, r23 
                     muls r31, r22 
                     and r2, r0 
                     sbr r20, 0x94 
                     andi r23, 0x43 
                  
                     sbr r22, 0x3E 
                     sbr r22, 0x19 
                     and r2, r0 
                     and r2, r0 
                     and r0, r0 
                     sbci r18, 0xD0 
                     sbr r22, 0x45                     
                     sbr r26, 0xF3 
                     and r2, r0 
                     and r0, r0 
                     and r2, r0 
                     sbci r18, 0xD0 
                     sbr r22, 0x41 
                     and r6, r5 
                     andi r20, 0x92 
                     and r2, r0 
                     and r2, r0 
                     and r0, r0 
                     and r2, r0 
                     sbci r18, 0xA0 
                     sbr r22, 0x55 
                     mov r7, r20 
                     andi r22, 0x2F 
                     and r6, r7 
                     and r2, r0 
                     
                     sbr r20, 0x94 
                     andi r23, 0x43 
                   
                     sbr r22, 0x93 
                     and r6, r1 
                     sbr r20, 0x5D 
                     sbr r22, 0x94 
                     sbr r22, 0x14 
                     sbci r16, 0x40 
                     andi r22, 0x39                      
                     sbr r26, 0xE2 
                     sbr r22, 0x93 
                     cpi r22, 0xA1 
                     and r0, r0 
                     sbr r20, 0xD3 
                     
