create or replace function Subscriptions(num_subscription number) return Subscription.Name%type
is
BEGIN
    IF num_subscription = 1 THEN
        return 'Free';
    ELSIF num_subscription = 2 THEN
        return 'Basic';
    ELSIF num_subscription = 3 THEN
        return 'Standard';
    ELSIF num_subscription = 4 THEN
        return 'Premium';
    ELSE
        return 'Free';
    END IF;
END;
