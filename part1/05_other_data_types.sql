 DROP TABLE IF EXISTS basics.app_events;

 CREATE TABLE basics.app_events(
    --uuid
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    event_name text not null,

    --JsonB

    metadata JSONB DEFAULT '{}'::JSONB,

    created_at TIMESTAMP DEFAULT NOW()
 );

INSERT INTO basics.app_events
    (event_name,metadata)
values
    (
        'sign-up',
        '{"browser":"chrome",
        "os":"windows"}'
    ),
    (
        'sign-up',
        '{"browser":"Brave"}'
    ),
    (
        'sign-in',
        '{"user":"pradeep"}'
    ),
    (
        'sign-out',
        '{"user":"pradeep"}'
    );

--  select * from basics.app_events;

select 
    event_name,
    metadata ->> 'browser' AS Which_Browser
from basics.app_events
where metadata ? 'browser';
