.class public Lcom/sonyericsson/home/PreferencesBehaviorActivity;
.super Landroid/preference/PreferenceActivity;
.source "PreferencesBehaviorActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    #p0=(Reference,Lcom/sonyericsson/home/PreferencesBehaviorActivity;);
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 17
    #v6=(Null);
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v4, 0x7f05000b

    #v4=(Integer);
    invoke-virtual {p0, v4}, Lcom/sonyericsson/home/PreferencesBehaviorActivity;->addPreferencesFromResource(I)V

    .line 21
    const-string v4, "com.sonyericsson.home_preferences"

    .line 20
    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v4, v6}, Lcom/sonyericsson/home/PreferencesBehaviorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 23
    .local v2, prefs:Landroid/content/SharedPreferences;
    #v2=(Reference,Landroid/content/SharedPreferences;);
    const-string v4, "homeButtonAction"

    invoke-virtual {p0, v4}, Lcom/sonyericsson/home/PreferencesBehaviorActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    #v0=(Reference,Landroid/preference/Preference;);
    check-cast v0, Landroid/preference/ListPreference;

    .line 24
    .local v0, homeButtAct:Landroid/preference/ListPreference;
    const-string v4, "homeButtonAction"

    const-string v5, "0"

    #v5=(Reference,Ljava/lang/String;);
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 26
    const-string v4, "autoRotateScreen"

    invoke-virtual {p0, v4}, Lcom/sonyericsson/home/PreferencesBehaviorActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    #v3=(Reference,Landroid/preference/Preference;);
    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 27
    .local v3, scrRota:Landroid/preference/CheckBoxPreference;
    const-string v4, "autoRotateScreen"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    #v4=(Boolean);
    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 29
    const-string v4, "infiniteScroll"

    #v4=(Reference,Ljava/lang/String;);
    invoke-virtual {p0, v4}, Lcom/sonyericsson/home/PreferencesBehaviorActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    #v1=(Reference,Landroid/preference/Preference;);
    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 30
    .local v1, infScroll:Landroid/preference/CheckBoxPreference;
    const-string v4, "infiniteScroll"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    #v4=(Boolean);
    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 31
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 43
    invoke-virtual {p0}, Lcom/sonyericsson/home/PreferencesBehaviorActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    #v0=(Reference,Landroid/preference/PreferenceScreen;);
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 44
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 45
    invoke-static {p0}, Lcom/ra3al/restarter/Restarter;->RestartFast(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 35
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 36
    invoke-virtual {p0}, Lcom/sonyericsson/home/PreferencesBehaviorActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    #v0=(Reference,Landroid/preference/PreferenceScreen;);
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 37
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 38
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 50
    const-string v0, "autoRotateScreen"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    const-string v0, "infiniteScroll"

    #v0=(Reference,Ljava/lang/String;);
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    #v0=(Boolean);
    if-eqz v0, :cond_1

    .line 51
    :cond_0
    invoke-static {p0}, Lcom/ra3al/restarter/Restarter;->RequestRestart(Landroid/content/Context;)V

    .line 53
    :cond_1
    return-void
.end method
