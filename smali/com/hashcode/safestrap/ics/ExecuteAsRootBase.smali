.class public abstract Lcom/hashcode/safestrap/ics/ExecuteAsRootBase;
.super Ljava/lang/Object;
.source "ExecuteAsRootBase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canRunRootCommands()Z
    .locals 10

    .prologue
    .line 15
    const/4 v5, 0x0

    .line 20
    .local v5, retval:Z
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    const-string v8, "su"

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 22
    .local v6, suProcess:Ljava/lang/Process;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v6}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 23
    .local v3, os:Ljava/io/DataOutputStream;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 25
    .local v4, osRes:Ljava/io/BufferedReader;
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 28
    const-string v7, "id\n"

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 31
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, currUid:Ljava/lang/String;
    const/4 v2, 0x0

    .line 33
    .local v2, exitSu:Z
    if-nez v0, :cond_1

    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v2, 0x0

    .line 37
    const-string v7, "ROOT"

    const-string v8, "Can\'t get root access or denied by user"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_0
    if-eqz v2, :cond_0

    .line 54
    const-string v7, "exit\n"

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 68
    .end local v0           #currUid:Ljava/lang/String;
    .end local v2           #exitSu:Z
    .end local v3           #os:Ljava/io/DataOutputStream;
    .end local v4           #osRes:Ljava/io/BufferedReader;
    .end local v6           #suProcess:Ljava/lang/Process;
    :cond_0
    :goto_1
    return v5

    .line 39
    .restart local v0       #currUid:Ljava/lang/String;
    .restart local v2       #exitSu:Z
    .restart local v3       #os:Ljava/io/DataOutputStream;
    .restart local v4       #osRes:Ljava/io/BufferedReader;
    .restart local v6       #suProcess:Ljava/lang/Process;
    :cond_1
    const-string v7, "uid=0"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 41
    const/4 v5, 0x1

    .line 42
    const/4 v2, 0x1

    .line 43
    const-string v7, "ROOT"

    const-string v8, "Root access granted"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    .end local v0           #currUid:Ljava/lang/String;
    .end local v2           #exitSu:Z
    .end local v3           #os:Ljava/io/DataOutputStream;
    .end local v4           #osRes:Ljava/io/BufferedReader;
    .end local v6           #suProcess:Ljava/lang/Process;
    :catch_0
    move-exception v1

    .line 64
    .local v1, e:Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 65
    const-string v7, "ROOT"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Root access rejected ["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 47
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #currUid:Ljava/lang/String;
    .restart local v2       #exitSu:Z
    .restart local v3       #os:Ljava/io/DataOutputStream;
    .restart local v4       #osRes:Ljava/io/BufferedReader;
    .restart local v6       #suProcess:Ljava/lang/Process;
    :cond_2
    const/4 v5, 0x0

    .line 48
    const/4 v2, 0x1

    .line 49
    :try_start_1
    const-string v7, "ROOT"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Root access rejected: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static final executecmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "cmd"

    .prologue
    .line 72
    const-string v3, ""

    .line 74
    .local v3, result:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "su"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 75
    .local v4, zuul:Ljava/lang/Process;
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-virtual {v4}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 76
    .local v2, osw:Ljava/io/OutputStreamWriter;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 78
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    .line 79
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 80
    .local v1, in:Ljava/io/BufferedReader;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 82
    .end local v1           #in:Ljava/io/BufferedReader;
    .end local v2           #osw:Ljava/io/OutputStreamWriter;
    .end local v4           #zuul:Ljava/lang/Process;
    :cond_0
    :goto_0
    return-object v3

    .line 81
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final execute()Z
    .locals 10

    .prologue
    .line 87
    const/4 v4, 0x0

    .line 91
    .local v4, retval:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/hashcode/safestrap/ics/ExecuteAsRootBase;->getCommandsToExecute()Ljava/util/ArrayList;

    move-result-object v0

    .line 92
    .local v0, commands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 94
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    const-string v8, "su"

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 96
    .local v5, suProcess:Ljava/lang/Process;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 99
    .local v3, os:Ljava/io/DataOutputStream;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 105
    const-string v7, "exit\n"

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 110
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v6

    .line 111
    .local v6, suProcessRetval:I
    const/16 v7, 0xff

    if-eq v7, v6, :cond_2

    .line 114
    const/4 v4, 0x1

    .line 141
    .end local v0           #commands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #os:Ljava/io/DataOutputStream;
    .end local v5           #suProcess:Ljava/lang/Process;
    .end local v6           #suProcessRetval:I
    :cond_0
    :goto_1
    return v4

    .line 99
    .restart local v0       #commands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #os:Ljava/io/DataOutputStream;
    .restart local v5       #suProcess:Ljava/lang/Process;
    :cond_1
    :try_start_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 101
    .local v1, currCommand:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 128
    .end local v0           #commands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #currCommand:Ljava/lang/String;
    .end local v3           #os:Ljava/io/DataOutputStream;
    .end local v5           #suProcess:Ljava/lang/Process;
    :catch_0
    move-exception v2

    .line 130
    .local v2, ex:Ljava/io/IOException;
    const-string v7, "ROOT"

    const-string v8, "Can\'t get root access"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 119
    .end local v2           #ex:Ljava/io/IOException;
    .restart local v0       #commands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #os:Ljava/io/DataOutputStream;
    .restart local v5       #suProcess:Ljava/lang/Process;
    .restart local v6       #suProcessRetval:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 122
    .end local v6           #suProcessRetval:I
    :catch_1
    move-exception v2

    .line 124
    .local v2, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v7, "Error executing root action"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 132
    .end local v0           #commands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v3           #os:Ljava/io/DataOutputStream;
    .end local v5           #suProcess:Ljava/lang/Process;
    :catch_2
    move-exception v2

    .line 134
    .local v2, ex:Ljava/lang/SecurityException;
    const-string v7, "ROOT"

    const-string v8, "Can\'t get root access"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 136
    .end local v2           #ex:Ljava/lang/SecurityException;
    :catch_3
    move-exception v2

    .line 138
    .local v2, ex:Ljava/lang/Exception;
    const-string v7, "ROOT"

    const-string v8, "Error executing internal operation"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected abstract getCommandsToExecute()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
