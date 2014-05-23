.class public Lcom/hashcode/safestrap/ics/UninstallDialogThread;
.super Ljava/lang/Thread;
.source "UninstallDialogThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public LOGTAG:Ljava/lang/String;

.field public handler:Landroid/os/Handler;

.field public mAppRoot:Ljava/io/File;

.field public packageCodePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 9
    iput-object v1, p0, Lcom/hashcode/safestrap/ics/UninstallDialogThread;->handler:Landroid/os/Handler;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/hashcode/safestrap/ics/UninstallDialogThread;->packageCodePath:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/hashcode/safestrap/ics/UninstallDialogThread;->mAppRoot:Ljava/io/File;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/hashcode/safestrap/ics/UninstallDialogThread;->LOGTAG:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method protected pause(I)V
    .locals 2
    .parameter "milli"

    .prologue
    .line 16
    int-to-long v0, p1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :goto_0
    return-void

    .line 18
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected reply(IILjava/lang/String;)V
    .locals 2
    .parameter "arg1"
    .parameter "arg2"
    .parameter "text"

    .prologue
    .line 22
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 23
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 24
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 25
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 26
    iget-object v1, p0, Lcom/hashcode/safestrap/ics/UninstallDialogThread;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hashcode/safestrap/ics/UninstallDialogThread;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 27
    :cond_0
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 32
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "Preparing Uninstall..."

    invoke-virtual {p0, v3, v4, v5}, Lcom/hashcode/safestrap/ics/UninstallDialogThread;->reply(IILjava/lang/String;)V

    .line 33
    const/16 v3, 0x7d0

    invoke-virtual {p0, v3}, Lcom/hashcode/safestrap/ics/UninstallDialogThread;->pause(I)V

    .line 34
    new-instance v2, Lcom/hashcode/safestrap/ics/AssetControl;

    invoke-direct {v2}, Lcom/hashcode/safestrap/ics/AssetControl;-><init>()V

    .line 35
    .local v2, unzip:Lcom/hashcode/safestrap/ics/AssetControl;
    iget-object v3, p0, Lcom/hashcode/safestrap/ics/UninstallDialogThread;->packageCodePath:Ljava/lang/String;

    iput-object v3, v2, Lcom/hashcode/safestrap/ics/AssetControl;->apkPath:Ljava/lang/String;

    .line 36
    iget-object v3, p0, Lcom/hashcode/safestrap/ics/UninstallDialogThread;->mAppRoot:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/hashcode/safestrap/ics/AssetControl;->mAppRoot:Ljava/lang/String;

    .line 37
    iget-object v3, p0, Lcom/hashcode/safestrap/ics/UninstallDialogThread;->LOGTAG:Ljava/lang/String;

    iput-object v3, v2, Lcom/hashcode/safestrap/ics/AssetControl;->LOGTAG:Ljava/lang/String;

    .line 38
    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "Unpacking Files..."

    invoke-virtual {p0, v3, v4, v5}, Lcom/hashcode/safestrap/ics/UninstallDialogThread;->reply(IILjava/lang/String;)V

    .line 39
    invoke-virtual {v2}, Lcom/hashcode/safestrap/ics/AssetControl;->unzipAssets()V

    .line 40
    const/4 v3, 0x1

    const/16 v4, 0x32

    const-string v5, "Checking Busybox..."

    invoke-virtual {p0, v3, v4, v5}, Lcom/hashcode/safestrap/ics/UninstallDialogThread;->reply(IILjava/lang/String;)V

    .line 41
    iget-object v3, p0, Lcom/hashcode/safestrap/ics/UninstallDialogThread;->mAppRoot:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, filesDir:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "chmod 755 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/busybox"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hashcode/safestrap/ics/ExecuteAsRootBase;->executecmd(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "chmod 755 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/*.sh"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hashcode/safestrap/ics/ExecuteAsRootBase;->executecmd(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    const/4 v3, 0x1

    const/16 v4, 0x3c

    const-string v5, "Uninstalling..."

    invoke-virtual {p0, v3, v4, v5}, Lcom/hashcode/safestrap/ics/UninstallDialogThread;->reply(IILjava/lang/String;)V

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sh "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/recovery-uninstall.sh "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hashcode/safestrap/ics/ExecuteAsRootBase;->executecmd(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    const/4 v3, 0x1

    const/16 v4, 0x5a

    const-string v5, "Cleaning Up..."

    invoke-virtual {p0, v3, v4, v5}, Lcom/hashcode/safestrap/ics/UninstallDialogThread;->reply(IILjava/lang/String;)V

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/busybox rm -r "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/install-files"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/hashcode/safestrap/ics/ExecuteAsRootBase;->executecmd(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "Uninstall Complete."

    invoke-virtual {p0, v3, v4, v5}, Lcom/hashcode/safestrap/ics/UninstallDialogThread;->reply(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v1           #filesDir:Ljava/lang/String;
    .end local v2           #unzip:Lcom/hashcode/safestrap/ics/AssetControl;
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v7, v6, v3}, Lcom/hashcode/safestrap/ics/UninstallDialogThread;->reply(IILjava/lang/String;)V

    goto :goto_0
.end method
