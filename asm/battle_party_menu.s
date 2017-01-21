	.include "constants/gba_constants.inc"
	.include "constants/species_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_809538C
sub_809538C: @ 809538C
	push {r4,r5,lr}
	ldr r4, _080953D8 @ =0x0201b260
	ldr r5, _080953DC @ =gUnknown_020384F0
_08095392:
	bl sub_806B124
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _080953F4
	ldrb r0, [r4]
	ldrb r1, [r5]
	bl sub_806C994
	ldrb r0, [r4]
	movs r1, 0
	bl sub_806BF74
	ldrb r1, [r5]
	movs r0, 0x64
	muls r0, r1
	ldr r1, _080953E0 @ =gPlayerParty
	adds r0, r1
	ldr r1, _080953E4 @ =gStringVar1
	bl GetMonNickname
	ldrb r0, [r4]
	ldrb r1, [r5]
	bl sub_8095050
	ldrb r0, [r4]
	ldr r1, _080953E8 @ =sub_8095408
	ldr r2, _080953EC @ =SetUpBattlePokemonMenu
	bl SetTaskFuncWithFollowupFunc
	ldr r0, _080953F0 @ =sub_806AEDC
	bl SetMainCallback2
	b _08095400
	.align 2, 0
_080953D8: .4byte 0x0201b260
_080953DC: .4byte gUnknown_020384F0
_080953E0: .4byte gPlayerParty
_080953E4: .4byte gStringVar1
_080953E8: .4byte sub_8095408
_080953EC: .4byte SetUpBattlePokemonMenu
_080953F0: .4byte sub_806AEDC
_080953F4:
	bl sub_80F9344
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _08095392
_08095400:
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_809538C

	thumb_func_start sub_8095408
sub_8095408: @ 8095408
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r7, r0, 24
	adds r4, r7, 0
	ldr r0, _0809543C @ =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r3, 0x80
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	bne _080954B8
	ldr r2, _08095440 @ =gMain
	ldrh r1, [r2, 0x30]
	movs r0, 0x40
	ands r0, r1
	cmp r0, 0
	beq _08095444
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x1
	negs r0, r0
	bl MoveMenuCursor
	b _080954B8
	.align 2, 0
_0809543C: .4byte gPaletteFade
_08095440: .4byte gMain
_08095444:
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	beq _0809545A
	movs r0, 0x5
	bl PlaySE
	movs r0, 0x1
	bl MoveMenuCursor
	b _080954B8
_0809545A:
	ldrh r1, [r2, 0x2E]
	movs r0, 0x1
	ands r0, r1
	cmp r0, 0
	beq _080954A4
	movs r0, 0x5
	bl PlaySE
	ldr r1, _08095498 @ =gTasks
	lsls r0, r7, 2
	adds r0, r7
	lsls r0, 3
	adds r0, r1
	ldrb r4, [r0, 0x10]
	ldr r5, _0809549C @ =gUnknown_083B5FF4
	ldr r6, _080954A0 @ =gUnknown_083B5FCC
	bl GetMenuCursorPos
	adds r3, r0, 0
	lsls r3, 24
	lsrs r3, 24
	adds r0, r4, 0
	adds r1, r5, 0
	adds r2, r6, 0
	bl sub_806E81C
	adds r1, r0, 0
	adds r0, r7, 0
	bl _call_via_r1
	b _080954B8
	.align 2, 0
_08095498: .4byte gTasks
_0809549C: .4byte gUnknown_083B5FF4
_080954A0: .4byte gUnknown_083B5FCC
_080954A4:
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _080954B8
	movs r0, 0x5
	bl PlaySE
	adds r0, r4, 0
	bl BattlePokemonMenu_Cancel
_080954B8:
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8095408

	thumb_func_start sub_80954C0
sub_80954C0: @ 80954C0
	push {lr}
	lsls r0, 24
	lsrs r1, r0, 24
	ldr r0, _080954D8 @ =gUnknown_0202E8F6
	ldrb r0, [r0]
	cmp r0, 0
	bne _080954D4
	adds r0, r1, 0
	bl BattlePokemonMenu_Cancel
_080954D4:
	pop {r0}
	bx r0
	.align 2, 0
_080954D8: .4byte gUnknown_0202E8F6
	thumb_func_end sub_80954C0

	thumb_func_start BattleShowPokemonSummaryScreen
BattleShowPokemonSummaryScreen: @ 80954DC
	push {r4,r5,lr}
	sub sp, 0x4
	lsls r0, 24
	lsrs r4, r0, 24
	adds r0, r4, 0
	bl sub_806CA38
	lsls r0, 24
	lsrs r5, r0, 24
	ldr r0, _0809552C @ =gPaletteFade
	ldrb r1, [r0, 0x7]
	movs r0, 0x80
	ands r0, r1
	cmp r0, 0
	bne _08095522
	adds r0, r4, 0
	bl DestroyTask
	ldr r0, _08095530 @ =0x0201b000
	ldr r1, _08095534 @ =0x00000262
	adds r0, r1
	movs r1, 0x1
	strb r1, [r0]
	ldr r0, _08095538 @ =gPlayerParty
	ldr r1, _0809553C @ =gPlayerPartyCount
	ldrb r2, [r1]
	subs r2, 0x1
	lsls r2, 24
	lsrs r2, 24
	ldr r3, _08095540 @ =sub_809535C
	movs r1, 0x4
	str r1, [sp]
	adds r1, r5, 0
	bl ShowPokemonSummaryScreen
_08095522:
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809552C: .4byte gPaletteFade
_08095530: .4byte 0x0201b000
_08095534: .4byte 0x00000262
_08095538: .4byte gPlayerParty
_0809553C: .4byte gPlayerPartyCount
_08095540: .4byte sub_809535C
	thumb_func_end BattleShowPokemonSummaryScreen

	thumb_func_start BattlePokemonMenu_Summary
BattlePokemonMenu_Summary: @ 8095544
	push {r4,lr}
	sub sp, 0x4
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r4, 0
	bl sub_806CA38
	ldr r1, _0809557C @ =gTasks
	lsls r0, r4, 2
	adds r0, r4
	lsls r0, 3
	adds r0, r1
	ldr r1, _08095580 @ =BattleShowPokemonSummaryScreen
	str r1, [r0]
	movs r0, 0x1
	negs r0, r0
	movs r1, 0
	str r1, [sp]
	movs r2, 0
	movs r3, 0x10
	bl BeginNormalPaletteFade
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809557C: .4byte gTasks
_08095580: .4byte BattleShowPokemonSummaryScreen
	thumb_func_end BattlePokemonMenu_Summary

	thumb_func_start BattlePokemonMenu_Shift
BattlePokemonMenu_Shift: @ 8095584
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	lsls r0, 24
	lsrs r6, r0, 24
	ldr r1, _080955F8 @ =gTasks
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	adds r0, r1
	ldrb r0, [r0, 0x10]
	ldr r1, _080955FC @ =gUnknown_083B5FF4
	bl sub_806E7D0
	adds r0, r6, 0
	bl sub_806CA38
	lsls r0, 24
	lsrs r5, r0, 24
	bl IsLinkDoubleBattle
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bne _08095610
	cmp r5, 0x1
	beq _080955C6
	cmp r5, 0x4
	beq _080955C6
	cmp r5, 0x5
	bne _08095610
_080955C6:
	bl sub_806D5A4
	ldr r4, _08095600 @ =gStringVar1
	bl sub_8040D08
	adds r1, r0, 0
	adds r0, r4, 0
	bl StringCopy
	ldr r4, _08095604 @ =gStringVar4
	ldr r1, _08095608 @ =gOtherText_CantSwitchPokeWithYours
	adds r0, r4, 0
	bl StringExpandPlaceholders
	adds r0, r4, 0
	movs r1, 0
	bl sub_806E834
	ldr r1, _080955F8 @ =gTasks
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	adds r0, r1
	ldr r1, _0809560C @ =sub_80954C0
	b _0809589A
	.align 2, 0
_080955F8: .4byte gTasks
_080955FC: .4byte gUnknown_083B5FF4
_08095600: .4byte gStringVar1
_08095604: .4byte gStringVar4
_08095608: .4byte gOtherText_CantSwitchPokeWithYours
_0809560C: .4byte sub_80954C0
_08095610:
	movs r0, 0x64
	adds r1, r5, 0
	muls r1, r0
	ldr r0, _08095654 @ =gPlayerParty
	adds r4, r1, r0
	adds r0, r4, 0
	movs r1, 0x39
	bl GetMonData
	cmp r0, 0
	bne _0809566C
	bl sub_806D5A4
	ldr r1, _08095658 @ =gStringVar1
	adds r0, r4, 0
	bl GetMonNickname
	ldr r4, _0809565C @ =gStringVar4
	ldr r1, _08095660 @ =gOtherText_NoEnergyLeft
	adds r0, r4, 0
	bl StringExpandPlaceholders
	adds r0, r4, 0
	movs r1, 0
	bl sub_806E834
	ldr r1, _08095664 @ =gTasks
	lsls r0, r6, 2
	adds r0, r6
	lsls r0, 3
	adds r0, r1
	ldr r1, _08095668 @ =sub_80954C0
	b _0809589A
	.align 2, 0
_08095654: .4byte gPlayerParty
_08095658: .4byte gStringVar1
_0809565C: .4byte gStringVar4
_08095660: .4byte gOtherText_NoEnergyLeft
_08095664: .4byte gTasks
_08095668: .4byte sub_80954C0
_0809566C:
	movs r4, 0
	ldr r0, _08095678 @ =gUnknown_02024A68
	lsls r1, r6, 2
	mov r8, r1
	b _080956A8
	.align 2, 0
_08095678: .4byte gUnknown_02024A68
_0809567C:
	adds r0, r4, 0
	bl battle_side_get_owner
	lsls r0, 24
	cmp r0, 0
	bne _080956A0
	adds r0, r5, 0
	bl sub_8094C20
	lsls r0, 24
	ldr r2, _080956EC @ =gUnknown_02024A6A
	lsls r1, r4, 1
	adds r1, r2
	lsrs r0, 24
	ldrh r1, [r1]
	cmp r0, r1
	bne _080956A0
	b _08095808
_080956A0:
	adds r0, r4, 0x1
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r0, _080956F0 @ =gUnknown_02024A68
_080956A8:
	ldrb r0, [r0]
	cmp r4, r0
	bcc _0809567C
	movs r2, 0x64
	mov r9, r2
	mov r0, r9
	muls r0, r5
	ldr r1, _080956F4 @ =gPlayerParty
	mov r10, r1
	adds r7, r0, r1
	adds r0, r7, 0
	movs r1, 0x2D
	bl GetMonData
	cmp r0, 0
	beq _08095708
	bl sub_806D5A4
	ldr r4, _080956F8 @ =gStringVar4
	ldr r1, _080956FC @ =gOtherText_EGGCantBattle
	adds r0, r4, 0
	bl StringExpandPlaceholders
	adds r0, r4, 0
	movs r1, 0
	bl sub_806E834
	ldr r1, _08095700 @ =gTasks
	mov r2, r8
	adds r0, r2, r6
	lsls r0, 3
	adds r0, r1
	ldr r1, _08095704 @ =sub_80954C0
	b _0809589A
	.align 2, 0
_080956EC: .4byte gUnknown_02024A6A
_080956F0: .4byte gUnknown_02024A68
_080956F4: .4byte gPlayerParty
_080956F8: .4byte gStringVar4
_080956FC: .4byte gOtherText_EGGCantBattle
_08095700: .4byte gTasks
_08095704: .4byte sub_80954C0
_08095708:
	adds r0, r5, 0
	bl sub_8094C20
	ldr r1, _0809574C @ =0x02000000
	ldr r2, _08095750 @ =0x0001609d
	adds r1, r2
	lsls r0, 24
	lsrs r0, 24
	ldrb r1, [r1]
	cmp r0, r1
	bne _08095768
	bl sub_806D5A4
	ldr r1, _08095754 @ =gStringVar1
	adds r0, r7, 0
	bl GetMonNickname
	ldr r4, _08095758 @ =gStringVar4
	ldr r1, _0809575C @ =gOtherText_AlreadySelected
	adds r0, r4, 0
	bl StringExpandPlaceholders
	adds r0, r4, 0
	movs r1, 0
	bl sub_806E834
	ldr r1, _08095760 @ =gTasks
	mov r2, r8
	adds r0, r2, r6
	lsls r0, 3
	adds r0, r1
	ldr r1, _08095764 @ =sub_80954C0
	b _0809589A
	.align 2, 0
_0809574C: .4byte 0x02000000
_08095750: .4byte 0x0001609d
_08095754: .4byte gStringVar1
_08095758: .4byte gStringVar4
_0809575C: .4byte gOtherText_AlreadySelected
_08095760: .4byte gTasks
_08095764: .4byte sub_80954C0
_08095768:
	ldr r0, _08095790 @ =gUnknown_02038473
	ldrb r0, [r0]
	cmp r0, 0x4
	bne _080957A0
	bl sub_806D5A4
	bl sub_8040B8C
	ldr r0, _08095794 @ =gStringVar4
	movs r1, 0
	bl sub_806E834
	ldr r1, _08095798 @ =gTasks
	mov r2, r8
	adds r0, r2, r6
	lsls r0, 3
	adds r0, r1
	ldr r1, _0809579C @ =sub_80954C0
	b _0809589A
	.align 2, 0
_08095790: .4byte gUnknown_02038473
_08095794: .4byte gStringVar4
_08095798: .4byte gTasks
_0809579C: .4byte sub_80954C0
_080957A0:
	cmp r0, 0x2
	bne _08095854
	ldr r0, _080957EC @ =gUnknown_02024E6C
	ldrb r4, [r0]
	bl sub_806D5A4
	ldr r0, _080957F0 @ =gUnknown_02024A6A
	lsls r4, 1
	adds r4, r0
	ldrb r0, [r4]
	bl pokemon_order_func
	lsls r0, 24
	lsrs r0, 24
	mov r1, r9
	muls r1, r0
	adds r0, r1, 0
	add r0, r10
	ldr r1, _080957F4 @ =gStringVar1
	bl GetMonNickname
	ldr r4, _080957F8 @ =gStringVar4
	ldr r1, _080957FC @ =gOtherText_CantBeSwitched
	adds r0, r4, 0
	bl StringExpandPlaceholders
	adds r0, r4, 0
	movs r1, 0
	bl sub_806E834
	ldr r1, _08095800 @ =gTasks
	mov r2, r8
	adds r0, r2, r6
	lsls r0, 3
	adds r0, r1
	ldr r1, _08095804 @ =sub_80954C0
	b _0809589A
	.align 2, 0
_080957EC: .4byte gUnknown_02024E6C
_080957F0: .4byte gUnknown_02024A6A
_080957F4: .4byte gStringVar1
_080957F8: .4byte gStringVar4
_080957FC: .4byte gOtherText_CantBeSwitched
_08095800: .4byte gTasks
_08095804: .4byte sub_80954C0
_08095808:
	bl sub_806D5A4
	movs r0, 0x64
	muls r0, r5
	ldr r1, _0809583C @ =gPlayerParty
	adds r0, r1
	ldr r1, _08095840 @ =gStringVar1
	bl GetMonNickname
	ldr r4, _08095844 @ =gStringVar4
	ldr r1, _08095848 @ =gOtherText_AlreadyBattle
	adds r0, r4, 0
	bl StringExpandPlaceholders
	adds r0, r4, 0
	movs r1, 0
	bl sub_806E834
	ldr r1, _0809584C @ =gTasks
	mov r2, r8
	adds r0, r2, r6
	lsls r0, 3
	adds r0, r1
	ldr r1, _08095850 @ =sub_80954C0
	b _0809589A
	.align 2, 0
_0809583C: .4byte gPlayerParty
_08095840: .4byte gStringVar1
_08095844: .4byte gStringVar4
_08095848: .4byte gOtherText_AlreadyBattle
_0809584C: .4byte gTasks
_08095850: .4byte sub_80954C0
_08095854:
	adds r0, r5, 0
	bl sub_8094C20
	ldr r1, _080958AC @ =gUnknown_0202E8F5
	strb r0, [r1]
	ldr r1, _080958B0 @ =gUnknown_0202E8F4
	movs r0, 0x1
	strb r0, [r1]
	ldr r1, _080958B4 @ =gUnknown_02024A6A
	ldr r0, _080958B8 @ =gUnknown_02024E6C
	ldrb r0, [r0]
	lsls r0, 1
	adds r0, r1
	ldrb r0, [r0]
	bl pokemon_order_func
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r4, 0
	adds r1, r5, 0
	bl sub_8094C98
	mov r0, r9
	muls r0, r4
	add r0, r10
	adds r1, r7, 0
	bl sub_806E6F0
	ldr r1, _080958BC @ =gTasks
	mov r2, r8
	adds r0, r2, r6
	lsls r0, 3
	adds r0, r1
	ldr r1, _080958C0 @ =sub_809527C
_0809589A:
	str r1, [r0]
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_080958AC: .4byte gUnknown_0202E8F5
_080958B0: .4byte gUnknown_0202E8F4
_080958B4: .4byte gUnknown_02024A6A
_080958B8: .4byte gUnknown_02024E6C
_080958BC: .4byte gTasks
_080958C0: .4byte sub_809527C
	thumb_func_end BattlePokemonMenu_Shift

	thumb_func_start BattlePokemonMenu_Cancel
BattlePokemonMenu_Cancel: @ 80958C4
	push {r4,r5,lr}
	adds r5, r0, 0
	lsls r5, 24
	lsrs r5, 24
	bl sub_8072DEC
	ldr r0, _080958FC @ =gTasks
	lsls r4, r5, 2
	adds r4, r5
	lsls r4, 3
	adds r4, r0
	ldrb r0, [r4, 0x10]
	ldr r1, _08095900 @ =gUnknown_083B5FF4
	bl sub_806E7D0
	ldrh r0, [r4, 0x12]
	strh r0, [r4, 0x10]
	movs r0, 0
	movs r1, 0
	bl sub_806D538
	adds r0, r5, 0
	bl SwitchTaskToFollowupFunc
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_080958FC: .4byte gTasks
_08095900: .4byte gUnknown_083B5FF4
	thumb_func_end BattlePokemonMenu_Cancel

	.align 2, 0 @ Don't pad with nop.
