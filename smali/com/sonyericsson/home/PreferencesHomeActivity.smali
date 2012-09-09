.class public Lcom/sonyericsson/home/PreferencesHomeActivity;
.super Landroid/preference/PreferenceActivity;
.source "PreferencesHomeActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private iDefaultScreen:I

.field private iNumScreens:I

.field private restarter:Lcom/sonyericsson/home/Restarter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 18
    const/4 v0, 0x5

    iput v0, p0, Lcom/sonyericsson/home/PreferencesHomeActivity;->iNumScreens:I

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/home/PreferencesHomeActivity;->iDefaultScreen:I

    .line 14
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 24
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    new-instance v7, Lcom/sonyericsson/home/Restarter;

    invoke-direct {v7}, Lcom/sonyericsson/home/Restarter;-><init>()V

    iput-object v7, p0, Lcom/sonyericsson/home/PreferencesHomeActivity;->restarter:Lcom/sonyericsson/home/Restarter;

    .line 26
    const v7, 0x7f05000c

    invoke-virtual {p0, v7}, Lcom/sonyericsson/home/PreferencesHomeActivity;->addPreferencesFromResource(I)V

    .line 28
    const-string v7, "com.sonyericsson.home_preferences"

    invoke-virtual {p0, v7, v9}, Lcom/sonyericsson/home/PreferencesHomeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 30
    .local v5, prefs:Landroid/content/SharedPreferences;
    const-string v7, "numberHomescreens"

    invoke-virtual {p0, v7}, Lcom/sonyericsson/home/PreferencesHomeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    .line 31
    .local v6, scrNum:Landroid/preference/ListPreference;
    const-string v7, "numberHomescreens"

    const-string v8, "5"

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/sonyericsson/home/PreferencesHomeActivity;->iNumScreens:I

    .line 32
    iget v7, p0, Lcom/sonyericsson/home/PreferencesHomeActivity;->iNumScreens:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 34
    const-string v7, "numDesktopCols"

    invoke-virtual {p0, v7}, Lcom/sonyericsson/home/PreferencesHomeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    .line 35
    .local v3, nCols:Landroid/preference/ListPreference;
    const-string v7, "numDesktopRows"

    invoke-virtual {p0, v7}, Lcom/sonyericsson/home/PreferencesHomeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    .line 37
    .local v4, nRows:Landroid/preference/ListPreference;
    const/4 v7, 0x7

    new-array v0, v7, [Ljava/lang/String;

    const-string v7, "3"

    aput-object v7, v0, v9

    const-string v7, "4"

    aput-object v7, v0, v10

    const/4 v7, 0x2

    const-string v8, "5"

    aput-object v8, v0, v7

    const/4 v7, 0x3

    const-string v8, "6"

    aput-object v8, v0, v7

    const/4 v7, 0x4

    const-string v8, "7"

    aput-object v8, v0, v7

    const/4 v7, 0x5

    const-string v8, "8"

    aput-object v8, v0, v7

    const/4 v7, 0x6

    const-string v8, "9"

    aput-object v8, v0, v7

    .line 39
    .local v0, colrowvals:[Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 41
    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 43
    const-string v7, "numDesktopCols"

    const-string v8, "4"

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 44
    const-string v7, "numDesktopRows"

    const-string v8, "4"

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 46
    const-string v7, "autohideDeskPaginatorPort"

    invoke-virtual {p0, v7}, Lcom/sonyericsson/home/PreferencesHomeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 47
    .local v2, hidePagPort:Landroid/preference/CheckBoxPreference;
    const-string v7, "autohideDeskPaginatorPort"

    invoke-interface {v5, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v2, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 48
    const-string v7, "autohideDeskPaginatorLand"

    invoke-virtual {p0, v7}, Lcom/sonyericsson/home/PreferencesHomeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 49
    .local v1, hidePagLand:Landroid/preference/CheckBoxPreference;
    const-string v7, "autohideDeskPaginatorLand"

    invoke-interface {v5, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v1, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 51
    iget v7, p0, Lcom/sonyericsson/home/PreferencesHomeActivity;->iNumScreens:I

    invoke-virtual {p0, v7}, Lcom/sonyericsson/home/PreferencesHomeActivity;->updateDefaultScreen(I)V

    .line 52
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 95
    invoke-virtual {p0}, Lcom/sonyericsson/home/PreferencesHomeActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 96
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 97
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 87
    invoke-virtual {p0}, Lcom/sonyericsson/home/PreferencesHomeActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 88
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 89
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 101
    const-string v0, "numberHomescreens"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "numDesktopCols"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "numDesktopRows"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "autohideDeskPaginatorPort"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "autohideDeskPaginatorLand"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/PreferencesHomeActivity;->restarter:Lcom/sonyericsson/home/Restarter;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/home/Restarter;->Restart(Landroid/content/Context;)V

    .line 105
    :cond_1
    return-void
.end method

.method updateDefaultScreen(I)V
    .locals 8
    .parameter "iNumScr"

    .prologue
    .line 56
    const-string v6, "com.sonyericsson.home_preferences"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/sonyericsson/home/PreferencesHomeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 57
    .local v4, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 59
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    const-string v6, "defaultHomescreen"

    invoke-virtual {p0, v6}, Lcom/sonyericsson/home/PreferencesHomeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 60
    .local v0, defScr:Landroid/preference/ListPreference;
    const-string v6, "defaultHomescreen"

    const-string v7, "-1"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/sonyericsson/home/PreferencesHomeActivity;->iDefaultScreen:I

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v2, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v5, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "Central Screen"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    const-string v6, "-1"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, p1, :cond_1

    .line 72
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 75
    iget v6, p0, Lcom/sonyericsson/home/PreferencesHomeActivity;->iDefaultScreen:I

    if-lt v6, p1, :cond_0

    .line 77
    add-int/lit8 v6, p1, -0x1

    iput v6, p0, Lcom/sonyericsson/home/PreferencesHomeActivity;->iDefaultScreen:I

    .line 78
    const-string v6, "defaultHomescreen"

    iget v7, p0, Lcom/sonyericsson/home/PreferencesHomeActivity;->iDefaultScreen:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 79
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 81
    :cond_0
    iget v6, p0, Lcom/sonyericsson/home/PreferencesHomeActivity;->iDefaultScreen:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 82
    return-void

    .line 69
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Screen No."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v7, v3, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
