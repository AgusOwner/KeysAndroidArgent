.class public Lorg/apache/tools/ant/taskdefs/EchoXML;
.super Lorg/apache/tools/ant/util/XMLFragment;
.source "EchoXML.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/EchoXML$NamespacePolicy;
    }
.end annotation


# static fields
.field private static final ERROR_NO_XML:Ljava/lang/String; = "No nested XML specified"


# instance fields
.field private append:Z

.field private file:Ljava/io/File;

.field private namespacePolicy:Lorg/apache/tools/ant/taskdefs/EchoXML$NamespacePolicy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lorg/apache/tools/ant/util/XMLFragment;-><init>()V

    .line 47
    sget-object v0, Lorg/apache/tools/ant/taskdefs/EchoXML$NamespacePolicy;->DEFAULT:Lorg/apache/tools/ant/taskdefs/EchoXML$NamespacePolicy;

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/EchoXML;->namespacePolicy:Lorg/apache/tools/ant/taskdefs/EchoXML$NamespacePolicy;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .line 79
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/EchoXML;->getFragment()Lorg/w3c/dom/DocumentFragment;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/DocumentFragment;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 84
    new-instance v1, Lorg/apache/tools/ant/util/DOMElementWriter;

    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/EchoXML;->append:Z

    xor-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/EchoXML;->namespacePolicy:Lorg/apache/tools/ant/taskdefs/EchoXML$NamespacePolicy;

    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/EchoXML$NamespacePolicy;->getPolicy()Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/tools/ant/util/DOMElementWriter;-><init>(ZLorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;)V

    .line 85
    :try_start_0
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/EchoXML;->file:Ljava/io/File;

    if-nez v2, :cond_0

    new-instance v2, Lorg/apache/tools/ant/taskdefs/LogOutputStream;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lorg/apache/tools/ant/taskdefs/LogOutputStream;-><init>(Lorg/apache/tools/ant/ProjectComponent;I)V

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/EchoXML;->append:Z

    invoke-static {v2, v3}, Lorg/apache/tools/ant/util/FileUtils;->newOutputStream(Ljava/nio/file/Path;Z)Ljava/io/OutputStream;

    move-result-object v2
    :try_end_0
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    :try_start_1
    check-cast v0, Lorg/w3c/dom/Element;

    invoke-virtual {v1, v0, v2}, Lorg/apache/tools/ant/util/DOMElementWriter;->write(Lorg/w3c/dom/Element;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 88
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    .line 85
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v0
    :try_end_4
    .catch Lorg/apache/tools/ant/BuildException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 91
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 89
    throw v0

    .line 81
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No nested XML specified"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAppend(Z)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/EchoXML;->append:Z

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/EchoXML;->file:Ljava/io/File;

    return-void
.end method

.method public setNamespacePolicy(Lorg/apache/tools/ant/taskdefs/EchoXML$NamespacePolicy;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/EchoXML;->namespacePolicy:Lorg/apache/tools/ant/taskdefs/EchoXML$NamespacePolicy;

    return-void
.end method
