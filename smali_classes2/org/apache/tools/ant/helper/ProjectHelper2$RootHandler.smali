.class public Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ProjectHelper2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/helper/ProjectHelper2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RootHandler"
.end annotation


# instance fields
.field private antHandlers:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;",
            ">;"
        }
    .end annotation
.end field

.field private context:Lorg/apache/tools/ant/helper/AntXMLContext;

.field private currentHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/helper/AntXMLContext;Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;)V
    .locals 1

    .line 499
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 489
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->antHandlers:Ljava/util/Stack;

    .line 500
    iput-object p2, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->currentHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    .line 501
    invoke-virtual {v0, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    iput-object p1, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->context:Lorg/apache/tools/ant/helper/AntXMLContext;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;)Lorg/apache/tools/ant/helper/AntXMLContext;
    .locals 0

    .line 488
    iget-object p0, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->context:Lorg/apache/tools/ant/helper/AntXMLContext;

    return-object p0
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    .line 619
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->currentHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->context:Lorg/apache/tools/ant/helper/AntXMLContext;

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;->characters([CIILorg/apache/tools/ant/helper/AntXMLContext;)V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 602
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->currentHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->context:Lorg/apache/tools/ant/helper/AntXMLContext;

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;->onEndElement(Ljava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/helper/AntXMLContext;)V

    .line 603
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->antHandlers:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    iput-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->currentHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    if-eqz v0, :cond_0

    .line 605
    iget-object v1, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->context:Lorg/apache/tools/ant/helper/AntXMLContext;

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;->onEndChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/helper/AntXMLContext;)V

    :cond_0
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 1

    .line 640
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->context:Lorg/apache/tools/ant/helper/AntXMLContext;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/helper/AntXMLContext;->endPrefixMapping(Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentAntHandler()Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;
    .locals 1

    .line 510
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->currentHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    return-object v0
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 6

    .line 526
    iget-object p1, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->context:Lorg/apache/tools/ant/helper/AntXMLContext;

    invoke-virtual {p1}, Lorg/apache/tools/ant/helper/AntXMLContext;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resolving systemId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    const-string p1, "file:"

    .line 528
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x4

    if-eqz p1, :cond_1

    .line 529
    invoke-static {}, Lorg/apache/tools/ant/helper/ProjectHelper2;->access$100()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/util/FileUtils;->fromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 531
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v1}, Ljava/io/File;->isAbsolute()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 533
    invoke-static {}, Lorg/apache/tools/ant/helper/ProjectHelper2;->access$100()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->context:Lorg/apache/tools/ant/helper/AntXMLContext;

    invoke-virtual {v2}, Lorg/apache/tools/ant/helper/AntXMLContext;->getBuildFileParent()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 534
    iget-object v2, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->context:Lorg/apache/tools/ant/helper/AntXMLContext;

    invoke-virtual {v2}, Lorg/apache/tools/ant/helper/AntXMLContext;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Warning: \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v4, "\' in "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v4, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->context:Lorg/apache/tools/ant/helper/AntXMLContext;

    .line 535
    invoke-virtual {v4}, Lorg/apache/tools/ant/helper/AntXMLContext;->getBuildFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v4, " should be expressed simply as \'"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v4, 0x5c

    const/16 v5, 0x2f

    .line 536
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\' for compliance with other XML tools"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 534
    invoke-virtual {v2, p1, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 539
    :cond_0
    iget-object p1, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->context:Lorg/apache/tools/ant/helper/AntXMLContext;

    invoke-virtual {p1}, Lorg/apache/tools/ant/helper/AntXMLContext;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "file="

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 541
    :try_start_0
    new-instance p1, Lorg/xml/sax/InputSource;

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    invoke-static {p2, v2}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 542
    invoke-static {}, Lorg/apache/tools/ant/helper/ProjectHelper2;->access$100()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object p2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/apache/tools/ant/util/FileUtils;->toURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 545
    :catch_0
    iget-object p1, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->context:Lorg/apache/tools/ant/helper/AntXMLContext;

    invoke-virtual {p1}, Lorg/apache/tools/ant/helper/AntXMLContext;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " could not be found"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 551
    :cond_1
    iget-object p1, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->context:Lorg/apache/tools/ant/helper/AntXMLContext;

    invoke-virtual {p1}, Lorg/apache/tools/ant/helper/AntXMLContext;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    const-string p2, "could not resolve systemId"

    invoke-virtual {p1, p2, v0}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1

    .line 586
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->context:Lorg/apache/tools/ant/helper/AntXMLContext;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/helper/AntXMLContext;->setLocator(Lorg/xml/sax/Locator;)V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXParseException;
        }
    .end annotation

    move-object v0, p0

    .line 572
    iget-object v1, v0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->currentHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    iget-object v6, v0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->context:Lorg/apache/tools/ant/helper/AntXMLContext;

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;->onStartChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/tools/ant/helper/AntXMLContext;)Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    move-result-object v7

    .line 573
    iget-object v1, v0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->antHandlers:Ljava/util/Stack;

    iget-object v2, v0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->currentHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    iput-object v7, v0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->currentHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    .line 575
    iget-object v12, v0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->context:Lorg/apache/tools/ant/helper/AntXMLContext;

    move-object v8, p1

    move-object v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-virtual/range {v7 .. v12}, Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;->onStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/apache/tools/ant/helper/AntXMLContext;)V

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 630
    iget-object v0, p0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->context:Lorg/apache/tools/ant/helper/AntXMLContext;

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/helper/AntXMLContext;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
