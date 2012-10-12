.class public Lcom/sonyericsson/home/PreferencesHomeActivity;
.super Landroid/preference/PreferenceActivity;
.source "PreferencesHomeActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private iDefaultScreen:I

.field private iNumScreens:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 18
    #p0=(Reference,Lcom/sonyericsson/home/PreferencesHomeActivity;);
    const/4 v0, 0x5

    #v0=(PosByte);
    iput v0, p0, Lcom/sonyericsson/home/PreferencesHomeActivity;->iNumScreens:I

    .line 19
    const/4 v0, -0x1

    #v0=(Byte);
    iput v0, p0, Lcom/sonyericsson/home/PreferencesHomeActivity;->iDefaultScreen:I

    .line 16
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x1

    #v11=(One);
    const/4 v10, 0x0

    .line 23
    #v10=(Null);
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v8, 0x7f05000c

    #v8=(Integer);
    invoke-virtual {p0, v8}, Lcom/sonyericsson/home/PreferencesHomeActivity;->addPreferencesFromResource(I)V

    .line 27
    const-string v8, "com.sonyericsson.home_preferences"

    .line 26
    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v8, v10}, Lcom/sonyericsson/home/PreferencesHomeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 29
    .local v6, prefs:Landroid/content/SharedPreferences;
    #v6=(Reference,Landroid/content/SharedPreferences;);
    const-string v8, "desktopConfig"

    invoke-virtual {p0, v8}, Lcom/sonyericsson/home/PreferencesHomeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    #v1=(Reference,Landroid/preference/Preference;);
    check-cast v1, Landroid/preference/ListPreference;

    .line 30
    .local v1, dConf:Landroid/preference/ListPreference;
    const-string v8, "desktopConfig"

    const-string v9, "0"

    #v9=(Reference,Ljava/lang/String;);
    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 32
    const-string v8, "numberHomescreens"

    invoke-virtual {p0, v8}, Lcom/sonyericsson/home/PreferencesHomeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    #v7=(Reference,Landroid/preference/Preference;);
    check-cast v7, Landroid/preference/ListPreference;

    .line 34
    .local v7, scrNum:Landroid/preference/ListPreference;
    const-string v8, "numberHomescreens"

    const-string v9, "5"

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 33
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    #v8=(Integer);
    iput v8, p0, Lcom/sonyericsson/home/PreferencesHomeActivity;->iNumScreens:I

    .line 35
    iget v8, p0, Lcom/sonyericsson/home/PreferencesHomeActivity;->iNumScreens:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 37
    const-string v8, "numDesktopCols"

    invoke-virtual {p0, v8}, Lcom/sonyericsson/home/PreferencesHomeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    #v4=(Reference,Landroid/preference/Preference;);
    check-cast v4, Landroid/preference/ListPreference;

    .line 38
    .local v4, nCols:Landroid/preference/ListPreference;
    const-string v8, "numDesktopRows"

    invoke-virtual {p0, v8}, Lcom/sonyericsson/home/PreferencesHomeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    #v5=(Reference,Landroid/preference/Preference;);
    check-cast v5, Landroid/preference/ListPreference;

    .line 40
    .local v5, nRows:Landroid/preference/ListPreference;
    const/4 v8, 0x7

    #v8=(PosByte);
    new-array v0, v8, [Ljava/lang/String;

    #v0=(Reference,[Ljava/lang/String;);
    const-string v8, "3"

    #v8=(Reference,Ljava/lang/String;);
    aput-object v8, v0, v10

    const-string v8, "4"

    aput-object v8, v0, v11

    const/4 v8, 0x2

    #v8=(PosByte);
    const-string v9, "5"

    aput-object v9, v0, v8

    const/4 v8, 0x3

    const-string v9, "6"

    aput-object v9, v0, v8

    const/4 v8, 0x4

    const-string v9, "7"

    aput-object v9, v0, v8

    const/4 v8, 0x5

    const-string v9, "8"

    aput-object v9, v0, v8

    const/4 v8, 0x6

    const-string v9, "9"

    aput-object v9, v0, v8

    .line 42
    .local v0, colrowvals:[Ljava/lang/String;
    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 43
    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 44
    invoke-virtual {v5, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {v5, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 46
    const-string v8, "numDesktopCols"

    #v8=(Reference,Ljava/lang/String;);
    const-string v9, "4"

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 47
    const-string v8, "numDesktopRows"

    const-string v9, "4"

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 49
    const-string v8, "autohideDeskPaginatorPort"

    invoke-virtual {p0, v8}, Lcom/sonyericsson/home/PreferencesHomeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    #v3=(Reference,Landroid/preference/Preference;);
    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 50
    .local v3, hidePagPort:Landroid/preference/CheckBoxPreference;
    const-string v8, "autohideDeskPaginatorPort"

    invoke-interface {v6, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    #v8=(Boolean);
    invoke-virtual {v3, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 52
    const-string v8, "autohideDeskPaginatorLand"

    #v8=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v8}, Lcom/sonyericsson/home/PreferencesHomeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    #v2=(Reference,Landroid/preference/Preference;);
    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 53
    .local v2, hidePagLand:Landroid/preference/CheckBoxPreference;
    const-string v8, "autohideDeskPaginatorLand"

    invoke-interface {v6, v8, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    #v8=(Boolean);
    invoke-virtual {v2, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 56
    iget v8, p0, Lcom/sonyericsson/home/PreferencesHomeActivity;->iNumScreens:I

    #v8=(Integer);
    invoke-virtual {p0, v8}, Lcom/sonyericsson/home/PreferencesHomeActivity;->updateDefaultScreen(I)V

    .line 57
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 99
    invoke-virtual {p0}, Lcom/sonyericsson/home/PreferencesHomeActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    #v0=(Reference,Landroid/preference/PreferenceScreen;);
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 100
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 101
    invoke-static {p0}, Lcom/ra3al/restarter/Restarter;->RestartFast(Landroid/content/Context;)V

    .line 102
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 92
    invoke-virtual {p0}, Lcom/sonyericsson/home/PreferencesHomeActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    #v0=(Reference,Landroid/preference/PreferenceScreen;);
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 93
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 94
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 106
    const-string v0, "numberHomescreens"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    const-string v0, "desktopConfig"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    const-string v0, "numDesktopCols"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 107
    const-string v0, "numDesktopRows"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 108
    const-string v0, "autohideDeskPaginatorPort"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 109
    const-string v0, "autohideDeskPaginatorLand"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 110
    :cond_0
    invoke-static {p0}, Lcom/ra3al/restarter/Restarter;->RequestRestart(Landroid/content/Context;)V

    .line 112
    :cond_1
    return-void
.end method

.method updateDefaultScreen(I)V
    .locals 8
    .parameter "iNumScr"

    .prologue
    .line 60
    .line 61
    const-string v6, "com.sonyericsson.home_preferences"

    #v6=(Reference,Ljava/lang/String;);
    const/4 v7, 0x0

    .line 60
    #v7=(Null);
    invoke-virtual {p0, v6, v7}, Lcom/sonyericsson/home/PreferencesHomeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 62
    .local v4, prefs:Landroid/content/SharedPreferences;
    #v4=(Reference,Landroid/content/SharedPreferences;);
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 64
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    #v1=(Reference,Landroid/content/SharedPreferences$Editor;);
    const-string v6, "defaultHomescreen"

    invoke-virtual {p0, v6}, Lcom/sonyericsson/home/PreferencesHomeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    #v0=(Reference,Landroid/preference/Preference;);
    check-cast v0, Landroid/preference/ListPreference;

    .line 65
    .local v0, defScr:Landroid/preference/ListPreference;
    const-string v6, "defaultHomescreen"

    .line 66
    const-string v7, "-1"

    .line 65
    #v7=(Reference,Ljava/lang/String;);
    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    #v6=(Integer);
    iput v6, p0, Lcom/sonyericsson/home/PreferencesHomeActivity;->iDefaultScreen:I

    .line 68
    new-instance v2, Ljava/util/ArrayList;

    #v2=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v2, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    #v2=(Reference,Ljava/util/ArrayList;);
    new-instance v5, Ljava/util/ArrayList;

    #v5=(UninitRef,Ljava/util/ArrayList;);
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v5, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    #v5=(Reference,Ljava/util/ArrayList;);
    const-string v6, "Central Screen"

    #v6=(Reference,Ljava/lang/String;);
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    const-string v6, "-1"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    #v3=(Integer);
    if-lt v3, p1, :cond_1

    .line 77
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    #v6=(Integer);
    new-array v6, v6, [Ljava/lang/CharSequence;

    #v6=(Reference,[Ljava/lang/CharSequence;);
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    #v6=(Integer);
    new-array v6, v6, [Ljava/lang/CharSequence;

    #v6=(Reference,[Ljava/lang/CharSequence;);
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 80
    iget v6, p0, Lcom/sonyericsson/home/PreferencesHomeActivity;->iDefaultScreen:I

    #v6=(Integer);
    if-lt v6, p1, :cond_0

    .line 81
    add-int/lit8 v6, p1, -0x1

    iput v6, p0, Lcom/sonyericsson/home/PreferencesHomeActivity;->iDefaultScreen:I

    .line 82
    const-string v6, "defaultHomescreen"

    .line 83
    #v6=(Reference,Ljava/lang/String;);
    iget v7, p0, Lcom/sonyericsson/home/PreferencesHomeActivity;->iDefaultScreen:I

    #v7=(Integer);
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 82
    #v7=(Reference,Ljava/lang/String;);
    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 84
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    :cond_0
    #v6=(Conflicted);
    iget v6, p0, Lcom/sonyericsson/home/PreferencesHomeActivity;->iDefaultScreen:I

    #v6=(Integer);
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    #v6=(Reference,Ljava/lang/String;);
    invoke-virtual {v0, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 87
    return-void

    .line 74
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    #v6=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v7, "Screen No."

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v6=(Reference,Ljava/lang/StringBuilder;);
    add-int/lit8 v7, v3, 0x1

    #v7=(Integer);
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    #v7=(Reference,Ljava/lang/String;);
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
