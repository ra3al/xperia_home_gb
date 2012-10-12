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

    #p0=(Reference,Lcom/sonyericsson/home/PreferencesBackupActivity$5;);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x1

    .line 184
    :try_start_0
    #v6=(One);
    new-instance v1, Ljava/io/File;

    #v1=(UninitRef,Ljava/io/File;);
    new-instance v3, Ljava/lang/StringBuilder;

    #v3=(UninitRef,Ljava/lang/StringBuilder;);
    const-string v4, "/data/data/"

    #v4=(Reference,Ljava/lang/String;);
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    #v3=(Reference,Ljava/lang/StringBuilder;);
    iget-object v4, p0, Lcom/sonyericsson/home/PreferencesBackupActivity$5;->this$0:Lcom/sonyericsson/home/PreferencesBackupActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/home/PreferencesBackupActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 184
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v1, datadir:Ljava/io/File;
    #v1=(Reference,Ljava/io/File;);
    new-instance v0, Ljava/io/File;

    .line 187
    #v0=(UninitRef,Ljava/io/File;);
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 188
    const-string v4, "xperia_launcher_backup"

    .line 186
    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 189
    .local v0, backupdir:Ljava/io/File;
    #v0=(Reference,Ljava/io/File;);
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_2

    .line 190
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    invoke-static {v1}, Lcom/sonyericsson/home/PreferencesBackupActivity;->access$2(Ljava/io/File;)Z

    .line 192
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/home/PreferencesBackupActivity$5;->this$0:Lcom/sonyericsson/home/PreferencesBackupActivity;

    #v3=(Reference,Lcom/sonyericsson/home/PreferencesBackupActivity;);
    invoke-static {v3, v0, v1}, Lcom/sonyericsson/home/PreferencesBackupActivity;->access$3(Lcom/sonyericsson/home/PreferencesBackupActivity;Ljava/io/File;Ljava/io/File;)V

    .line 193
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    #v3=(Boolean);
    if-eqz v3, :cond_1

    .line 194
    iget-object v3, p0, Lcom/sonyericsson/home/PreferencesBackupActivity$5;->this$0:Lcom/sonyericsson/home/PreferencesBackupActivity;

    #v3=(Reference,Lcom/sonyericsson/home/PreferencesBackupActivity;);
    const-string v4, "Backup restored successfully."

    const/4 v5, 0x1

    #v5=(One);
    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 196
    iget-object v3, p0, Lcom/sonyericsson/home/PreferencesBackupActivity$5;->this$0:Lcom/sonyericsson/home/PreferencesBackupActivity;

    invoke-static {v3}, Lcom/ra3al/restarter/Restarter;->RequestRestart(Landroid/content/Context;)V

    .line 215
    .end local v0           #backupdir:Ljava/io/File;
    .end local v1           #datadir:Ljava/io/File;
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v5=(Conflicted);
    return-void

    .line 199
    .restart local v0       #backupdir:Ljava/io/File;
    .restart local v1       #datadir:Ljava/io/File;
    :cond_1
    #v0=(Reference,Ljava/io/File;);v1=(Reference,Ljava/io/File;);v2=(Uninit);v3=(Boolean);v5=(Uninit);
    iget-object v3, p0, Lcom/sonyericsson/home/PreferencesBackupActivity$5;->this$0:Lcom/sonyericsson/home/PreferencesBackupActivity;

    .line 200
    #v3=(Reference,Lcom/sonyericsson/home/PreferencesBackupActivity;);
    const-string v4, "An error occurred while trying to restore the backup. Please make sure the external storage is available"

    .line 201
    const/4 v5, 0x1

    .line 198
    #v5=(One);
    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 201
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 208
    .end local v0           #backupdir:Ljava/io/File;
    .end local v1           #datadir:Ljava/io/File;
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    move-exception v2

    .line 209
    .local v2, localException:Ljava/lang/Exception;
    #v2=(Reference,Ljava/lang/Exception;);
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 211
    iget-object v3, p0, Lcom/sonyericsson/home/PreferencesBackupActivity$5;->this$0:Lcom/sonyericsson/home/PreferencesBackupActivity;

    .line 212
    #v3=(Reference,Lcom/sonyericsson/home/PreferencesBackupActivity;);
    const-string v4, "An error occurred while trying to restore the backup. Please make sure the external storage is available"

    .line 210
    #v4=(Reference,Ljava/lang/String;);
    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 213
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 204
    .end local v2           #localException:Ljava/lang/Exception;
    .restart local v0       #backupdir:Ljava/io/File;
    .restart local v1       #datadir:Ljava/io/File;
    :cond_2
    :try_start_1
    #v0=(Reference,Ljava/io/File;);v1=(Reference,Ljava/io/File;);v2=(Uninit);v3=(Boolean);v5=(Uninit);
    iget-object v3, p0, Lcom/sonyericsson/home/PreferencesBackupActivity$5;->this$0:Lcom/sonyericsson/home/PreferencesBackupActivity;

    .line 205
    #v3=(Reference,Lcom/sonyericsson/home/PreferencesBackupActivity;);
    const-string v4, "No backup files were found!"

    const/4 v5, 0x1

    .line 204
    #v5=(One);
    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 206
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
