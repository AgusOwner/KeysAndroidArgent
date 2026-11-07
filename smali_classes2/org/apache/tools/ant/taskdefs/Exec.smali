.class public Lorg/apache/tools/ant/taskdefs/Exec;
.super Lorg/apache/tools/ant/Task;
.source "Exec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Exec$StreamPumper;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private command:Ljava/lang/String;

.field private dir:Ljava/io/File;

.field private failOnError:Z

.field protected fos:Ljava/io/PrintWriter;

.field private os:Ljava/lang/String;

.field private out:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Exec;->fos:Ljava/io/PrintWriter;

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Exec;->failOnError:Z

    .line 63
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "As of Ant 1.2 released in October 2000, the Exec class"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 65
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "is considered to be dead code by the Ant developers and is unmaintained."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Don\'t use it!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Exec;->command:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/Exec;->run(Ljava/lang/String;)I

    return-void
.end method

.method protected logFlush()V
    .locals 1

    .line 236
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Exec;->fos:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_0
    return-void
.end method

.method protected outputLog(Ljava/lang/String;I)V
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Exec;->fos:Ljava/io/PrintWriter;

    if-nez v0, :cond_0

    .line 226
    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Exec;->log(Ljava/lang/String;I)V

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected run(Ljava/lang/String;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "Exec returned: "

    const-string v1, "Result: "

    const-string v2, "Output redirected to "

    const-string v3, "os.name"

    .line 90
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Myos = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {p0, v4, v5}, Lorg/apache/tools/ant/taskdefs/Exec;->log(Ljava/lang/String;I)V

    .line 92
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Exec;->os:Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Not found in "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Exec;->os:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v5}, Lorg/apache/tools/ant/taskdefs/Exec;->log(Ljava/lang/String;I)V

    return v6

    .line 99
    :cond_0
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Exec;->dir:Ljava/io/File;

    if-nez v4, :cond_1

    .line 100
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Exec;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/tools/ant/taskdefs/Exec;->dir:Ljava/io/File;

    .line 103
    :cond_1
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "windows"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v7, "Property \'ant.home\' not found"

    const-string v8, "ant.home"

    const-string v9, " "

    if-eqz v4, :cond_4

    .line 104
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Exec;->dir:Ljava/io/File;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Exec;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 105
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "nt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 106
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cmd /c cd "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Exec;->dir:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " && "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 108
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Exec;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v3, v8}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 114
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Exec;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "/bin/antRun.bat"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Exec;->dir:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 110
    :cond_3
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    .line 111
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Exec;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    invoke-direct {p1, v7, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1

    .line 119
    :cond_4
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Exec;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v3, v8}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 124
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Exec;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "/bin/antRun"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Exec;->dir:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5
    :goto_0
    const/4 v3, -0x1

    .line 131
    :try_start_0
    invoke-virtual {p0, p1, v5}, Lorg/apache/tools/ant/taskdefs/Exec;->log(Ljava/lang/String;I)V

    .line 134
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 136
    iget-object v7, p0, Lorg/apache/tools/ant/taskdefs/Exec;->out:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 137
    new-instance v7, Ljava/io/PrintWriter;

    new-instance v8, Ljava/io/FileWriter;

    iget-object v9, p0, Lorg/apache/tools/ant/taskdefs/Exec;->out:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v7, p0, Lorg/apache/tools/ant/taskdefs/Exec;->fos:Ljava/io/PrintWriter;

    .line 138
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Exec;->out:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v5}, Lorg/apache/tools/ant/taskdefs/Exec;->log(Ljava/lang/String;I)V

    .line 142
    :cond_6
    new-instance v2, Lorg/apache/tools/ant/taskdefs/Exec$StreamPumper;

    .line 143
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const/4 v7, 0x2

    invoke-direct {v2, p0, v5, v7}, Lorg/apache/tools/ant/taskdefs/Exec$StreamPumper;-><init>(Lorg/apache/tools/ant/taskdefs/Exec;Ljava/io/InputStream;I)V

    .line 144
    new-instance v5, Lorg/apache/tools/ant/taskdefs/Exec$StreamPumper;

    .line 145
    invoke-virtual {v4}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v5, p0, v7, v8}, Lorg/apache/tools/ant/taskdefs/Exec$StreamPumper;-><init>(Lorg/apache/tools/ant/taskdefs/Exec;Ljava/io/InputStream;I)V

    .line 148
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Exec$StreamPumper;->start()V

    .line 149
    invoke-virtual {v5}, Lorg/apache/tools/ant/taskdefs/Exec$StreamPumper;->start()V

    .line 152
    invoke-virtual {v4}, Ljava/lang/Process;->waitFor()I

    .line 153
    invoke-virtual {v2}, Lorg/apache/tools/ant/taskdefs/Exec$StreamPumper;->join()V

    .line 154
    invoke-virtual {v5}, Lorg/apache/tools/ant/taskdefs/Exec$StreamPumper;->join()V

    .line 155
    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    .line 158
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Exec;->logFlush()V

    .line 161
    invoke-virtual {v4}, Ljava/lang/Process;->exitValue()I

    move-result v3

    if-eqz v3, :cond_8

    .line 163
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/Exec;->failOnError:Z

    if-nez v2, :cond_7

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lorg/apache/tools/ant/taskdefs/Exec;->log(Ljava/lang/String;I)V

    goto :goto_1

    .line 164
    :cond_7
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Exec;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    :goto_1
    return v3

    :catch_1
    move-exception v0

    .line 169
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error exec: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Exec;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 121
    :cond_9
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    .line 122
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Exec;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v0

    invoke-direct {p1, v7, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Exec;->command:Ljava/lang/String;

    return-void
.end method

.method public setDir(Ljava/lang/String;)V
    .locals 1

    .line 182
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Exec;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Exec;->dir:Ljava/io/File;

    return-void
.end method

.method public setFailonerror(Z)V
    .locals 0

    .line 215
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Exec;->failOnError:Z

    return-void
.end method

.method public setOs(Ljava/lang/String;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Exec;->os:Ljava/lang/String;

    return-void
.end method

.method public setOutput(Ljava/lang/String;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Exec;->out:Ljava/lang/String;

    return-void
.end method
