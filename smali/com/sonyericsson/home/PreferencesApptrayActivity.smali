.class public Lcom/sonyericsson/home/PreferencesApptrayActivity;
.super Landroid/preference/PreferenceActivity;
.source "PreferencesApptrayActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    #p0=(Reference,Lcom/sonyericsson/home/PreferencesApptrayActivity;);
    return-void
.end method

.method private deleteAppTrayDatabase(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 66
    const-string v0, "apptray"

    #v0=(Reference,Ljava/lang/String;);
    invoke-static {p1, v0}, Lcom/sonyericsson/storage/Storage;->deleteRoot(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x1

    #v10=(One);
    const/4 v9, 0x0

    .line 20
    #v9=(Null);
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v7, 0x7f05000a

    #v7=(Integer);
    invoke-virtual {p0, v7}, Lcom/sonyericsson/home/PreferencesApptrayActivity;->addPreferencesFromResource(I)V

    .line 24
    const-string v7, "com.sonyericsson.home_preferences"

    .line 23
    #v7=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v7, v9}, Lcom/sonyericsson/home/PreferencesApptrayActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 26
    .local v6, prefs:Landroid/content/SharedPreferences;
    #v6=(Reference,Landroid/content/SharedPreferences;);
    const-string v7, "apptrayStartFromFirstPane"

    invoke-virtual {p0, v7}, Lcom/sonyericsson/home/PreferencesApptrayActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    #v0=(Reference,Landroid/preference/Preference;);
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 28
    .local v0, alwaysFirstPane:Landroid/preference/CheckBoxPreference;
    const-string v7, "apptrayStartFromFirstPane"

    .line 27
    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    #v7=(Boolean);
    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 30
    const-string v7, "numAppTrayCols"

    #v7=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v7}, Lcom/sonyericsson/home/PreferencesApptrayActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    #v4=(Reference,Landroid/preference/Preference;);
    check-cast v4, Landroid/preference/ListPreference;

    .line 31
    .local v4, nCols:Landroid/preference/ListPreference;
    const-string v7, "numAppTrayRows"

    invoke-virtual {p0, v7}, Lcom/sonyericsson/home/PreferencesApptrayActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    #v5=(Reference,Landroid/preference/Preference;);
    check-cast v5, Landroid/preference/ListPreference;

    .line 33
    .local v5, nRows:Landroid/preference/ListPreference;
    const/4 v7, 0x7

    #v7=(PosByte);
    new-array v1, v7, [Ljava/lang/String;

    #v1=(Reference,[Ljava/lang/String;);
    const-string v7, "3"

    #v7=(Reference,Ljava/lang/String;);
    aput-object v7, v1, v9

    const-string v7, "4"

    aput-object v7, v1, v10

    const/4 v7, 0x2

    #v7=(PosByte);
    const-string v8, "5"

    #v8=(Reference,Ljava/lang/String;);
    aput-object v8, v1, v7

    const/4 v7, 0x3

    const-string v8, "6"

    aput-object v8, v1, v7

    const/4 v7, 0x4

    const-string v8, "7"

    aput-object v8, v1, v7

    const/4 v7, 0x5

    const-string v8, "8"

    aput-object v8, v1, v7

    const/4 v7, 0x6

    const-string v8, "9"

    aput-object v8, v1, v7

    .line 35
    .local v1, colrowvals:[Ljava/lang/String;
    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {v5, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {v5, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 39
    const-string v7, "numAppTrayCols"

    #v7=(Reference,Ljava/lang/String;);
    const-string v8, "4"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 40
    const-string v7, "numAppTrayRows"

    const-string v8, "4"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 42
    const-string v7, "autohideAppTrayPaginatorPort"

    invoke-virtual {p0, v7}, Lcom/sonyericsson/home/PreferencesApptrayActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    #v3=(Reference,Landroid/preference/Preference;);
    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 43
    .local v3, hidePagPort:Landroid/preference/CheckBoxPreference;
    const-string v7, "autohideAppTrayPaginatorPort"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    #v7=(Boolean);
    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 45
    const-string v7, "autohideAppTrayPaginatorLand"

    #v7=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v7}, Lcom/sonyericsson/home/PreferencesApptrayActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    #v2=(Reference,Landroid/preference/Preference;);
    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 46
    .local v2, hidePagLand:Landroid/preference/CheckBoxPreference;
    const-string v7, "autohideAppTrayPaginatorLand"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    #v7=(Boolean);
    invoke-virtual {v2, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 48
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 60
    invoke-virtual {p0}, Lcom/sonyericsson/home/PreferencesApptrayActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    #v0=(Reference,Landroid/preference/PreferenceScreen;);
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 61
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 62
    invoke-static {p0}, Lcom/ra3al/restarter/Restarter;->RestartFast(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 52
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 53
    invoke-virtual {p0}, Lcom/sonyericsson/home/PreferencesApptrayActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    #v0=(Reference,Landroid/preference/PreferenceScreen;);
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 54
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 55
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 71
    const-string v0, "numAppTrayCols"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    const-string v0, "numAppTrayRows"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 72
    :cond_0
    invoke-direct {p0, p0}, Lcom/sonyericsson/home/PreferencesApptrayActivity;->deleteAppTrayDatabase(Landroid/content/Context;)V

    .line 74
    :cond_1
    const-string v0, "numAppTrayCols"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_2

    const-string v0, "numAppTrayRows"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_2

    .line 75
    const-string v0, "autohideAppTrayPaginatorPort"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_2

    .line 76
    const-string v0, "autohideAppTrayPaginatorLand"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_3

    .line 77
    :cond_2
    invoke-static {p0}, Lcom/ra3al/restarter/Restarter;->RequestRestart(Landroid/content/Context;)V

    .line 79
    :cond_3
    return-void
.end method
