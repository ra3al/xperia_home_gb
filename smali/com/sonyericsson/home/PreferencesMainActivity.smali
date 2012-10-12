.class public Lcom/sonyericsson/home/PreferencesMainActivity;
.super Landroid/preference/PreferenceActivity;
.source "PreferencesMainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    #p0=(Reference,Lcom/sonyericsson/home/PreferencesMainActivity;);
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v0, 0x7f05000d

    #v0=(Integer);
    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/PreferencesMainActivity;->addPreferencesFromResource(I)V

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef,Ljava/lang/StringBuilder;);
    const/high16 v1, 0x7f07

    #v1=(Integer);
    invoke-virtual {p0, v1}, Lcom/sonyericsson/home/PreferencesMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    #v1=(Reference,Ljava/lang/String;);
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #v0=(Reference,Ljava/lang/StringBuilder;);
    const-string v1, ": Preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/home/PreferencesMainActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 17
    return-void
.end method
