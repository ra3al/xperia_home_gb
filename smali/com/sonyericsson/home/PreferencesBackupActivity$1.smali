.class Lcom/sonyericsson/home/PreferencesBackupActivity$1;
.super Ljava/lang/Object;
.source "PreferencesBackupActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/PreferencesBackupActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/home/PreferencesBackupActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/home/PreferencesBackupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sonyericsson/home/PreferencesBackupActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesBackupActivity;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/home/PreferencesBackupActivity$1;->this$0:Lcom/sonyericsson/home/PreferencesBackupActivity;

    invoke-static {v0}, Lcom/sonyericsson/home/PreferencesBackupActivity;->access$0(Lcom/sonyericsson/home/PreferencesBackupActivity;)V

    .line 47
    const/4 v0, 0x1

    return v0
.end method
