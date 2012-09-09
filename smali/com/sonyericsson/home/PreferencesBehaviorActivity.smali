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
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 18
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    new-instance v3, Lcom/sonyericsson/home/Restarter;

    invoke-direct {v3}, Lcom/sonyericsson/home/Restarter;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/home/PreferencesBehaviorActivity;->restarter:Lcom/sonyericsson/home/Restarter;

    .line 20
    const v3, 0x7f05000b

    invoke-virtual {p0, v3}, Lcom/sonyericsson/home/PreferencesBehaviorActivity;->addPreferencesFromResource(I)V

    .line 22
    const-string v3, "com.sonyericsson.home_preferences"

    invoke-virtual {p0, v3, v5}, Lcom/sonyericsson/home/PreferencesBehaviorActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 24
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v3, "homeButtonAction"

    invoke-virtual {p0, v3}, Lcom/sonyericsson/home/PreferencesBehaviorActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 25
    .local v0, homeButtAct:Landroid/preference/ListPreference;
    const-string v3, "homeButtonAction"

    const-string v4, "0"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 27
    const-string v3, "autoRotateScreen"

    invoke-virtual {p0, v3}, Lcom/sonyericsson/home/PreferencesBehaviorActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 28
    .local v2, scrRota:Landroid/preference/CheckBoxPreference;
    const-string v3, "autoRotateScreen"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 29
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

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 44
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 45
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 35
    invoke-virtual {p0}, Lcom/sonyericsson/home/PreferencesBehaviorActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 36
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 37
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 49
    const-string v0, "autoRotateScreen"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/sonyericsson/home/PreferencesBehaviorActivity;->restarter:Lcom/sonyericsson/home/Restarter;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/home/Restarter;->Restart(Landroid/content/Context;)V

    .line 53
    :cond_0
    return-void
.end method
