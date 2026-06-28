#!/usr/bin/env bats
# Unit tests for AENUX's pure helper functions.
# The script's entry point is guarded by a BASH_SOURCE check, so sourcing it
# here only exposes the functions — it does not elevate or launch the menu.

setup() {
    source "${BATS_TEST_DIRNAME}/../aenux"
}

# ── is_uint ────────────────────────────────────────────────────────────
@test "is_uint accepts digits" {
    run is_uint 123
    [ "$status" -eq 0 ]
}

@test "is_uint rejects non-digits" {
    run is_uint 12a
    [ "$status" -ne 0 ]
}

@test "is_uint rejects empty string" {
    run is_uint ""
    [ "$status" -ne 0 ]
}

# ── is_int ─────────────────────────────────────────────────────────────
@test "is_int accepts a negative number" {
    run is_int -5
    [ "$status" -eq 0 ]
}

@test "is_int rejects a float" {
    run is_int 1.5
    [ "$status" -ne 0 ]
}

# ── have ───────────────────────────────────────────────────────────────
@test "have finds an existing command" {
    run have bash
    [ "$status" -eq 0 ]
}

@test "have rejects a missing command" {
    run have definitely_not_a_real_command_xyz
    [ "$status" -ne 0 ]
}

# ── require_input ──────────────────────────────────────────────────────
@test "require_input cancels on empty input" {
    INPUT=""
    run require_input
    [ "$status" -ne 0 ]
}

@test "require_input treats whitespace as empty" {
    INPUT="   "
    run require_input
    [ "$status" -ne 0 ]
}

@test "require_input passes a real value" {
    INPUT="nginx"
    run require_input
    [ "$status" -eq 0 ]
}

# ── valid_pid ──────────────────────────────────────────────────────────
@test "valid_pid rejects non-numeric input" {
    run valid_pid foo
    [ "$status" -ne 0 ]
}

@test "valid_pid accepts a number" {
    run valid_pid 42
    [ "$status" -eq 0 ]
}

# ── confirm ────────────────────────────────────────────────────────────
@test "confirm accepts 'y'" {
    run bash -c 'source "'"${BATS_TEST_DIRNAME}"'/../aenux"; echo y | confirm "ok?"'
    [ "$status" -eq 0 ]
}

@test "confirm rejects a blank answer (default No)" {
    run bash -c 'source "'"${BATS_TEST_DIRNAME}"'/../aenux"; echo "" | confirm "ok?"'
    [ "$status" -ne 0 ]
}

# ── detect_pm ──────────────────────────────────────────────────────────
@test "detect_pm returns a non-empty value" {
    run detect_pm
    [ -n "$output" ]
}
