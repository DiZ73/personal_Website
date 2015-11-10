create trigger posts_insert_trg after insert on posts
begin
    update posts set created_at = datetime('NOW') where rowid = new.rowid;
    update posts set updated_at = datetime('NOW') where rowid = new.rowid;
end;
