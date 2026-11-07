.class public Lorg/apache/tools/ant/taskdefs/XmlProperty;
.super Lorg/apache/tools/ant/Task;
.source "XmlProperty.java"


# static fields
.field private static final ATTRIBUTES:[Ljava/lang/String;

.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final ID:Ljava/lang/String; = "id"

.field private static final LOCATION:Ljava/lang/String; = "location"

.field private static final PATH:Ljava/lang/String; = "path"

.field private static final PATHID:Ljava/lang/String; = "pathid"

.field private static final REF_ID:Ljava/lang/String; = "refid"

.field private static final VALUE:Ljava/lang/String; = "value"


# instance fields
.field private addedAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private collapseAttributes:Z

.field private delimiter:Ljava/lang/String;

.field private includeSemanticAttribute:Z

.field private keepRoot:Z

.field private prefix:Ljava/lang/String;

.field private rootDirectory:Ljava/io/File;

.field private semanticAttributes:Z

.field private src:Lorg/apache/tools/ant/types/Resource;

.field private validate:Z

.field private xmlCatalog:Lorg/apache/tools/ant/types/XMLCatalog;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "id"

    const-string v1, "refid"

    const-string v2, "location"

    const-string v3, "value"

    const-string v4, "path"

    const-string v5, "pathid"

    .line 187
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->ATTRIBUTES:[Ljava/lang/String;

    .line 191
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 180
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    const-string v0, ""

    .line 194
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->prefix:Ljava/lang/String;

    const/4 v0, 0x1

    .line 195
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->keepRoot:Z

    const/4 v0, 0x0

    .line 196
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->validate:Z

    .line 197
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->collapseAttributes:Z

    .line 198
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->semanticAttributes:Z

    .line 199
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->includeSemanticAttribute:Z

    const/4 v0, 0x0

    .line 200
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->rootDirectory:Ljava/io/File;

    .line 201
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->addedAttributes:Ljava/util/Map;

    .line 202
    new-instance v0, Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/XMLCatalog;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->xmlCatalog:Lorg/apache/tools/ant/types/XMLCatalog;

    const-string v0, ","

    .line 203
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->delimiter:Ljava/lang/String;

    return-void
.end method

.method private addNodeRecursively(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 292
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 293
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 296
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 299
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->processNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 302
    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 304
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 310
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->addNodeRecursively(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private addProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v1, 0x4

    .line 464
    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->log(Ljava/lang/String;I)V

    .line 466
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->addedAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->addedAttributes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getDelimiter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 476
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/Project;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->addedAttributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 478
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 479
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->addedAttributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 482
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Override ignored for property "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->log(Ljava/lang/String;I)V

    :goto_0
    if-eqz p3, :cond_3

    .line 485
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    invoke-virtual {p1, p3, p2}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private getAttributeName(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 3

    .line 497
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    .line 499
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->semanticAttributes:Z

    const-string v1, "."

    if-eqz v0, :cond_3

    const-string v0, "refid"

    .line 502
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_0

    return-object v2

    .line 506
    :cond_0
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->isSemanticAttribute(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->includeSemanticAttribute:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-object v2

    .line 507
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 511
    :cond_3
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->collapseAttributes:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getAttributeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 2

    .line 534
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 535
    iget-boolean v1, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->semanticAttributes:Z

    if-eqz v1, :cond_1

    .line 536
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    .line 537
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/Project;->replaceProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "location"

    .line 538
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 539
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 540
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v1, "refid"

    .line 542
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 543
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 545
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method private static isSemanticAttribute(Ljava/lang/String;)Z
    .locals 1

    .line 518
    sget-object v0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->ATTRIBUTES:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private resolveFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 737
    sget-object v0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->rootDirectory:Ljava/io/File;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1, p1}, Lorg/apache/tools/ant/util/FileUtils;->resolveFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addConfigured(Lorg/apache/tools/ant/types/ResourceCollection;)V
    .locals 2

    .line 580
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 584
    invoke-interface {p1}, Lorg/apache/tools/ant/types/ResourceCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->setSrcResource(Lorg/apache/tools/ant/types/Resource;)V

    return-void

    .line 581
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "only single argument resource collections are supported as archives"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addConfiguredXMLCatalog(Lorg/apache/tools/ant/types/XMLCatalog;)V
    .locals 1

    .line 654
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->xmlCatalog:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/types/XMLCatalog;->addConfiguredXMLCatalog(Lorg/apache/tools/ant/types/XMLCatalog;)V

    return-void
.end method

.method addNodeRecursively(Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 316
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->addNodeRecursively(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public execute()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "Failed to load "

    const-string v1, "Unable to find property resource: "

    const-string v2, "Loading "

    .line 229
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getResource()Lorg/apache/tools/ant/types/Resource;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 235
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->src:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {p0, v2, v4}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->log(Ljava/lang/String;I)V

    .line 237
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Resource;->isExists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 239
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 240
    iget-boolean v2, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->validate:Z

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    const/4 v2, 0x0

    .line 241
    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 242
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 243
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 245
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->src:Lorg/apache/tools/ant/types/Resource;

    const-class v4, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/tools/ant/types/resources/FileProvider;

    if-eqz v3, :cond_0

    .line 247
    invoke-interface {v3}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v1

    goto :goto_0

    .line 249
    :cond_0
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->src:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v3}, Lorg/apache/tools/ant/types/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 251
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    .line 257
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->addedAttributes:Ljava/util/Map;

    .line 259
    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->keepRoot:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 260
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->prefix:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v4}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->addNodeRecursively(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 262
    :cond_1
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 263
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    :goto_1
    if-ge v2, v3, :cond_3

    .line 265
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->prefix:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v4}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->addNodeRecursively(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 269
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->log(Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    return-void

    :catch_0
    move-exception v1

    .line 284
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->src:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    .line 281
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v1

    .line 275
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 276
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v1

    .line 278
    :cond_4
    new-instance v2, Lorg/apache/tools/ant/BuildException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->src:Lorg/apache/tools/ant/types/Resource;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 232
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "XmlProperty task requires a source resource"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getCollapseAttributes()Z
    .locals 1

    .line 704
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->collapseAttributes:Z

    return v0
.end method

.method public getDelimiter()Ljava/lang/String;
    .locals 1

    .line 761
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->delimiter:Ljava/lang/String;

    return-object v0
.end method

.method protected getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    .line 218
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->xmlCatalog:Lorg/apache/tools/ant/types/XMLCatalog;

    return-object v0
.end method

.method protected getFile()Ljava/io/File;
    .locals 2

    .line 663
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->src:Lorg/apache/tools/ant/types/Resource;

    const-class v1, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    if-eqz v0, :cond_0

    .line 664
    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected getIncludeSemanticAttribute()Z
    .locals 1

    .line 729
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->includeSemanticAttribute:Z

    return v0
.end method

.method protected getIncludeSementicAttribute()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 723
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getIncludeSemanticAttribute()Z

    move-result v0

    return v0
.end method

.method protected getKeeproot()Z
    .locals 1

    .line 690
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->keepRoot:Z

    return v0
.end method

.method protected getPrefix()Ljava/lang/String;
    .locals 1

    .line 683
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method protected getResource()Lorg/apache/tools/ant/types/Resource;
    .locals 3

    .line 673
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getFile()Ljava/io/File;

    move-result-object v0

    .line 674
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->src:Lorg/apache/tools/ant/types/Resource;

    const-class v2, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/resources/FileProvider;

    if-nez v0, :cond_0

    .line 675
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->src:Lorg/apache/tools/ant/types/Resource;

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 676
    invoke-interface {v1}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->src:Lorg/apache/tools/ant/types/Resource;

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method protected getRootDirectory()Ljava/io/File;
    .locals 1

    .line 718
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->rootDirectory:Ljava/io/File;

    return-object v0
.end method

.method protected getSemanticAttributes()Z
    .locals 1

    .line 711
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->semanticAttributes:Z

    return v0
.end method

.method protected getValidate()Z
    .locals 1

    .line 697
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->validate:Z

    return v0
.end method

.method public init()V
    .locals 2

    .line 210
    invoke-super {p0}, Lorg/apache/tools/ant/Task;->init()V

    .line 211
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->xmlCatalog:Lorg/apache/tools/ant/types/XMLCatalog;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/types/XMLCatalog;->setProject(Lorg/apache/tools/ant/Project;)V

    return-void
.end method

.method public processNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 345
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v3

    const-string v4, "pathid"

    const-string v5, "path"

    const-string v6, "refid"

    const-string v7, "location"

    const/4 v9, 0x0

    if-eqz v3, :cond_9

    .line 347
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    const-string v10, "id"

    .line 350
    invoke-interface {v3, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    .line 351
    iget-boolean v12, v0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->semanticAttributes:Z

    if-eqz v12, :cond_0

    if-eqz v11, :cond_0

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :cond_0
    move-object v11, v9

    :goto_0
    move-object v13, v9

    const/4 v12, 0x0

    .line 354
    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v14

    if-ge v12, v14, :cond_a

    .line 356
    invoke-interface {v3, v12}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    .line 358
    iget-boolean v15, v0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->semanticAttributes:Z

    if-nez v15, :cond_1

    .line 359
    invoke-direct {v0, v14}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getAttributeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v15

    .line 360
    invoke-direct {v0, v14}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getAttributeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v14

    .line 361
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8, v14, v9}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->addProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v3

    goto/16 :goto_3

    .line 363
    :cond_1
    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    .line 364
    invoke-direct {v0, v14}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getAttributeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v15

    .line 366
    instance-of v9, v2, Lorg/apache/tools/ant/types/Path;

    if-eqz v9, :cond_2

    .line 367
    move-object/from16 v16, v2

    check-cast v16, Lorg/apache/tools/ant/types/Path;

    move-object/from16 v18, v16

    move-object/from16 v16, v3

    move-object/from16 v3, v18

    goto :goto_2

    :cond_2
    move-object/from16 v16, v3

    const/4 v3, 0x0

    .line 374
    :goto_2
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v3, :cond_4

    .line 378
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 380
    invoke-virtual {v3, v15}, Lorg/apache/tools/ant/types/Path;->setPath(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_5

    if-eqz v9, :cond_5

    .line 382
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 384
    invoke-virtual {v3, v15}, Lorg/apache/tools/ant/types/Path;->setPath(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    if-eqz v3, :cond_6

    if-eqz v9, :cond_6

    .line 386
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 389
    invoke-direct {v0, v15}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/apache/tools/ant/types/Path;->setLocation(Ljava/io/File;)V

    goto :goto_3

    .line 390
    :cond_6
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-nez v2, :cond_7

    .line 395
    new-instance v13, Lorg/apache/tools/ant/types/Path;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-direct {v13, v3}, Lorg/apache/tools/ant/types/Path;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 396
    invoke-virtual/range {p0 .. p0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v3

    invoke-virtual {v3, v15, v13}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 393
    :cond_7
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "XmlProperty does not support nested paths"

    invoke-direct {v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 399
    :cond_8
    invoke-direct {v0, v14}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getAttributeName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    .line 400
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v15, v11}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->addProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v3, v16

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_9
    const/4 v11, 0x0

    const/4 v13, 0x0

    .line 407
    :cond_a
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_c

    iget-boolean v3, v0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->semanticAttributes:Z

    if-eqz v3, :cond_c

    .line 409
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 410
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    const-string v9, "value"

    invoke-interface {v3, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    if-nez v3, :cond_b

    .line 411
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    if-nez v3, :cond_b

    .line 412
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    if-nez v3, :cond_b

    .line 413
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-interface {v3, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    if-nez v3, :cond_b

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 414
    invoke-interface {v3, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_c

    :cond_b
    move v3, v8

    goto :goto_4

    :cond_c
    const/4 v3, 0x0

    .line 415
    :goto_4
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_e

    .line 417
    invoke-direct/range {p0 .. p1}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->getAttributeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v9

    :cond_d
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 418
    :cond_e
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-ne v4, v8, :cond_f

    .line 419
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ne v4, v8, :cond_f

    .line 420
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v6, 0x4

    if-ne v4, v6, :cond_f

    .line 422
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    .line 423
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    if-nez v3, :cond_d

    goto :goto_6

    .line 426
    :cond_f
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const-string v6, ""

    if-ne v4, v8, :cond_10

    .line 427
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-nez v4, :cond_10

    if-nez v3, :cond_10

    :goto_5
    move-object v9, v6

    goto :goto_6

    .line 431
    :cond_10
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-ne v4, v8, :cond_11

    .line 432
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ne v4, v8, :cond_11

    .line 433
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-ne v4, v5, :cond_11

    .line 434
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_11

    if-nez v3, :cond_11

    goto :goto_5

    :cond_11
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_6
    if-eqz v9, :cond_14

    .line 441
    iget-boolean v3, v0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->semanticAttributes:Z

    if-eqz v3, :cond_12

    if-nez v11, :cond_12

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_12

    .line 442
    check-cast v2, Ljava/lang/String;

    move-object v11, v2

    .line 444
    :cond_12
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v8, :cond_14

    .line 445
    :cond_13
    invoke-direct {v0, v1, v9, v11}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->addProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    if-eqz v13, :cond_15

    goto :goto_7

    :cond_15
    move-object v13, v11

    :goto_7
    return-object v13
.end method

.method public setCollapseAttributes(Z)V
    .locals 0

    .line 619
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->collapseAttributes:Z

    return-void
.end method

.method public setDelimiter(Ljava/lang/String;)V
    .locals 0

    .line 770
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->delimiter:Ljava/lang/String;

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .locals 1

    .line 557
    new-instance v0, Lorg/apache/tools/ant/types/resources/FileResource;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/types/resources/FileResource;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->setSrcResource(Lorg/apache/tools/ant/types/Resource;)V

    return-void
.end method

.method public setIncludeSemanticAttribute(Z)V
    .locals 0

    .line 646
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->includeSemanticAttribute:Z

    return-void
.end method

.method public setKeeproot(Z)V
    .locals 0

    .line 602
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->keepRoot:Z

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    .line 592
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->prefix:Ljava/lang/String;

    return-void
.end method

.method public setRootDirectory(Ljava/io/File;)V
    .locals 0

    .line 636
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->rootDirectory:Ljava/io/File;

    return-void
.end method

.method public setSemanticAttributes(Z)V
    .locals 0

    .line 627
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->semanticAttributes:Z

    return-void
.end method

.method public setSrcResource(Lorg/apache/tools/ant/types/Resource;)V
    .locals 1

    .line 565
    invoke-virtual {p1}, Lorg/apache/tools/ant/types/Resource;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 568
    const-class v0, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/XmlProperty;->supportsNonFileResources()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 571
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Only FileSystem resources are supported."

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 569
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->src:Lorg/apache/tools/ant/types/Resource;

    return-void

    .line 566
    :cond_2
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "the source can\'t be a directory"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setValidate(Z)V
    .locals 0

    .line 610
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/XmlProperty;->validate:Z

    return-void
.end method

.method protected supportsNonFileResources()Z
    .locals 2

    .line 753
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/tools/ant/taskdefs/XmlProperty;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
