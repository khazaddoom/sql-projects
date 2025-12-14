INSERT INTO CONFIGURATION(
    reason,
    metadata
) VALUES(
    'First Configuration',
    '{
        "level": "FACILITY",
        "level_code": "FC_01",
        "effective_start_date": "2025-12-15 00:00:00",
        "effective_end_date": "2026-01-02 23:59:59",
        "active_time_slots": [{
            "start_slot": "09:00",
            "end_slot": "09:30",
        }],
        "inactive_time_slots": [{
            "start_slot": "17:00",
            "end_slot": "17:30",
        }],
        "no_of_visitors_allowed": 2,
        "specific_visitors": []
    }'
);

INSERT INTO CONFIGURATION(
    reason,
    metadata
) VALUES(
    'On 31st December 2025, Whole Facility FC_01 is CLOSED for Visits',
    '{
        "level": "FACILITY",
        "level_code": "FC_01",
        "effective_start_date": "2025-12-31 00:00:00",
        "effective_end_date": "2025-12-31 23:59:59",
        "active_time_slots": [],
        "inactive_time_slots": [{
            "start_slot": "00:00",
            "end_slot": "00:00",
        }],
        "no_of_visitors_allowed": 2,
        "specific_visitors": []
    }'
);