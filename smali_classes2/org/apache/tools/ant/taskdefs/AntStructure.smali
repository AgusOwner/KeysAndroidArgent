.class public Lorg/apache/tools/ant/taskdefs/AntStructure;
.super Lorg/apache/tools/ant/Task;
.source "AntStructure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/AntStructure$DTDPrinter;,
        Lorg/apache/tools/ant/taskdefs/AntStructure$StructurePrinter;
    }
.end annotation


# instance fields
.field private output:Ljava/io/File;

.field private printer:Lorg/apache/tools/ant/taskdefs/AntStructure$StructurePrinter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 56
    new-instance v0, Lorg/apache/tools/ant/taskdefs/AntStructure$DTDPrinter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/AntStructure$DTDPrinter;-><init>(Lorg/apache/tools/ant/taskdefs/AntStructure$1;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/AntStructure;->printer:Lorg/apache/tools/ant/taskdefs/AntStructure$StructurePrinter;

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/taskdefs/AntStructure$StructurePrinter;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AntStructure;->printer:Lorg/apache/tools/ant/taskdefs/AntStructure$StructurePrinter;

    return-void
.end method

.method protected areNmtokens([Ljava/lang/String;)Z
    .locals 0

    .line 418
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/AntStructure$DTDPrinter;->areNmtokens([Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public execute()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/AntStructure;->output:Ljava/io/File;

    if-eqz v0, :cond_3

    .line 87
    :try_start_0
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/AntStructure;->output:Ljava/io/File;

    .line 88
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :try_start_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/AntStructure;->printer:Lorg/apache/tools/ant/taskdefs/AntStructure$StructurePrinter;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AntStructure;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    new-instance v3, Ljava/util/Hashtable;

    .line 91
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AntStructure;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/tools/ant/Project;->getTaskDefinitions()Ljava/util/Hashtable;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    new-instance v4, Ljava/util/Hashtable;

    .line 92
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AntStructure;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/tools/ant/Project;->getDataTypeDefinitions()Ljava/util/Hashtable;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    .line 90
    invoke-interface {v1, v0, v2, v3, v4}, Lorg/apache/tools/ant/taskdefs/AntStructure$StructurePrinter;->printHead(Ljava/io/PrintWriter;Lorg/apache/tools/ant/Project;Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    .line 94
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/AntStructure;->printer:Lorg/apache/tools/ant/taskdefs/AntStructure$StructurePrinter;

    invoke-interface {v1, v0}, Lorg/apache/tools/ant/taskdefs/AntStructure$StructurePrinter;->printTargetDecl(Ljava/io/PrintWriter;)V

    .line 96
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AntStructure;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getCopyOfDataTypeDefinitions()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 97
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/AntStructure;->printer:Lorg/apache/tools/ant/taskdefs/AntStructure$StructurePrinter;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AntStructure;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    .line 98
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AntStructure;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/tools/ant/Project;->getDataTypeDefinitions()Ljava/util/Hashtable;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 97
    invoke-interface {v3, v0, v4, v2, v5}, Lorg/apache/tools/ant/taskdefs/AntStructure$StructurePrinter;->printElementDecl(Ljava/io/PrintWriter;Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AntStructure;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getCopyOfTaskDefinitions()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 102
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/AntStructure;->printer:Lorg/apache/tools/ant/taskdefs/AntStructure$StructurePrinter;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AntStructure;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    .line 103
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AntStructure;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/tools/ant/Project;->getTaskDefinitions()Ljava/util/Hashtable;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 102
    invoke-interface {v3, v0, v4, v2, v5}, Lorg/apache/tools/ant/taskdefs/AntStructure$StructurePrinter;->printElementDecl(Ljava/io/PrintWriter;Lorg/apache/tools/ant/Project;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_1

    .line 106
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/AntStructure;->printer:Lorg/apache/tools/ant/taskdefs/AntStructure$StructurePrinter;

    invoke-interface {v1, v0}, Lorg/apache/tools/ant/taskdefs/AntStructure$StructurePrinter;->printTail(Ljava/io/PrintWriter;)V

    .line 108
    invoke-virtual {v0}, Ljava/io/PrintWriter;->checkError()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    .line 111
    :try_start_2
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 109
    :cond_2
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Encountered an error writing Ant structure"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    .line 87
    :try_start_4
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 112
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error writing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/AntStructure;->output:Ljava/io/File;

    .line 113
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AntStructure;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    .line 84
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "output attribute is required"

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AntStructure;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method protected isNmtoken(Ljava/lang/String;)Z
    .locals 0

    .line 406
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/AntStructure$DTDPrinter;->isNmtoken(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setOutput(Ljava/io/File;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/AntStructure;->output:Ljava/io/File;

    return-void
.end method
