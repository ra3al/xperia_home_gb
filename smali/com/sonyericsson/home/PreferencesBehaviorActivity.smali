.class public Lcom/sonyericsson/home/PreferencesBehaviorActivity;
.super Landroid/preference/PreferenceActivity;
.source "PreferencesBehaviorActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private restarter:Lcom/sonyericsson/home/Restarter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 18
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    new-instance v4, Lcom/sonyericsson/home/Restarter;

    invoke-direct {v4}, Lcom/sonyericsson/home/Restarter;-><init>()V

    iput-object v4, p0, Lcom/sonyericsson/home/PreferencesBehaviorActivity;->restarter:Lcom/sonyericsson/home/Restarter;

    .line 20
    const v4, 0x7f05000b

    invoke-virtual {p0, v4}, Lcom/sonyericsson/home/PreferencesBehaviorActivity;->addPreferencesFromResource(I)V

    .line 22
    const-string v4, "com.sonyericsson.home_preferences"

    invoke-virtual {p0, v4, v6}, Lcom/sonyericsson/home/PreferencesBehaviorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 24
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v4, "homeButtonAction"

    invoke-virtual {p0, v4}, Lcom/sonyericsson/home/PreferencesBehaviorActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 25
    .local v0, homeButtAct:Landroid/preference/ListPreference;
    const-string v4, "homeButtonAction"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 27
    const-string v4, "autoRotateScreen"

    invoke-virtual {p0, v4}, Lcom/sonyericsson/home/PreferencesBehaviorActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 28
    .local v3, scrRota:Landroid/preference/CheckBoxPreference;
    const-string v4, "autoRotateScreen"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 30
    const-string v4, "infiniteScroll"

    invoke-virtual {p0, v4}, Lcom/sonyericsson/home/PreferencesBehaviorActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 31
    .local v1, infScroll:Landroid/preference/CheckBoxPreference;
    const-string v4, "infiniteScroll"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 32
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 46
    invoke-virtual {p0}, Lcom/sonyericsson/home/PreferencesBehaviorActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 47
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 48
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 37
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 38
    invoke-virtual {p0}, Lcom/sonyericsson/home/PreferencesBehaviorActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 39
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 40
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 52
    const-string v0, "autoRotateScreen"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "infiniteScroll"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/home/PreferencesBehaviorActivity;->restarter:Lcom/sonyericsson/home/Restarter;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/home/Restarter;->Restart(Landroid/content/Context;)V

    .line 56
    :cond_1
    return-void
.end method
