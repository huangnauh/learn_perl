my @capitals = ("Baton Rouge", "Indianapolis", "Columbus", "Montgomery", "Helena", "Denver", "Boise");
print join ", ", map { "'".$_."'" } @capitals;
