.class Lcom/sonyericsson/home/PreferencesBackupActivity$5;
.super Ljava/lang/Object;
.source "PreferencesBackupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/home/PreferencesBackupActivity;->doRestore()V
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
    iput-object p1, p0, Lcom/sonyericsson/home/PreferencesBackupActivity$5;->this$0:Lcom/sonyericsson/home/PreferencesBackupActivity;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x1

    .line 187
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/data/data/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sonyericsson/home/PreferencesBackupActivity$5;->this$0:Lcom/sonyericsson/home/PreferencesBackupActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/home/PreferencesBackupActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 188
    .local v1, datadir:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "xperia_launcher_backup"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 189
    .local v0, backupdir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 191
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    invoke-static {v1}, Lcom/sonyericsson/home/PreferencesBackupActivity;->access$2(Ljava/io/File;)Z

    .line 193
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/home/PreferencesBackupActivity$5;->this$0:Lcom/sonyericsson/home/PreferencesBackupActivity;

    invoke-static {v3, v0, v1}, Lcom/sonyericsson/home/PreferencesBackupActivity;->access$3(Lcom/sonyericsson/home/PreferencesBackupActivity;Ljava/io/File;Ljava/io/File;)V

    .line 194
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 196
    iget-object v3, p0, Lcom/sonyericsson/home/PreferencesBackupActivity$5;->this$0:Lcom/sonyericsson/home/PreferencesBackupActivity;

    invoke-static {v3}, Lcom/sonyericsson/home/PreferencesBackupActivity;->access$4(Lcom/sonyericsson/home/PreferencesBackupActivity;)Lcom/sonyericsson/home/Restarter;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/home/PreferencesBackupActivity$5;->this$0:Lcom/sonyericsson/home/PreferencesBackupActivity;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/home/Restarter;->Restart(Landroid/content/Context;)V

    .line 213
    .end local v0           #backupdir:Ljava/io/File;
    .end local v1           #datadir:Ljava/io/File;
    :goto_0
    return-void

    .line 200
    .restart local v0       #backupdir:Ljava/io/File;
    .restart local v1       #datadir:Ljava/io/File;
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/home/PreferencesBackupActivity$5;->this$0:Lcom/sonyericsson/home/PreferencesBackupActivity;

    const-string v4, "An error occurred while trying to restore the backup. Please make sure the external storage is available"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    .end local v0           #backupdir:Ljava/io/File;
    .end local v1           #datadir:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 210
    .local v2, localException:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 211
    iget-object v3, p0, Lcom/sonyericsson/home/PreferencesBackupActivity$5;->this$0:Lcom/sonyericsson/home/PreferencesBackupActivity;

    const-string v4, "An error occurred while trying to restore the backup. Please make sure the external storage is available"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 205
    .end local v2           #localException:Ljava/lang/Exception;
    .restart local v0       #backupdir:Ljava/io/File;
    .restart local v1       #datadir:Ljava/io/File;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/sonyericsson/home/PreferencesBackupActivity$5;->this$0:Lcom/sonyericsson/home/PreferencesBackupActivity;

    const-string v4, "No backup files were found!"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
