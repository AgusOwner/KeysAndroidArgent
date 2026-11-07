.class public Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;
.super Lorg/xml/sax/HandlerBase;
.source "DescriptorHandler.java"


# static fields
.field private static final BEAN_CLASS:Ljava/lang/String; = "ejb-class"

.field private static final DEFAULT_HASH_TABLE_SIZE:I = 0xa

.field private static final EJB_JAR:Ljava/lang/String; = "ejb-jar"

.field private static final EJB_LOCAL_REF:Ljava/lang/String; = "ejb-local-ref"

.field private static final EJB_NAME:Ljava/lang/String; = "ejb-name"

.field private static final EJB_REF:Ljava/lang/String; = "ejb-ref"

.field private static final ENTERPRISE_BEANS:Ljava/lang/String; = "enterprise-beans"

.field private static final ENTITY_BEAN:Ljava/lang/String; = "entity"

.field private static final HOME_INTERFACE:Ljava/lang/String; = "home"

.field private static final LOCAL_HOME_INTERFACE:Ljava/lang/String; = "local-home"

.field private static final LOCAL_INTERFACE:Ljava/lang/String; = "local"

.field private static final MESSAGE_BEAN:Ljava/lang/String; = "message-driven"

.field private static final PK_CLASS:Ljava/lang/String; = "prim-key-class"

.field private static final REMOTE_INTERFACE:Ljava/lang/String; = "remote"

.field private static final SESSION_BEAN:Ljava/lang/String; = "session"

.field private static final STATE_IN_BEANS:I = 0x3

.field private static final STATE_IN_EJBJAR:I = 0x2

.field private static final STATE_IN_ENTITY:I = 0x5

.field private static final STATE_IN_MESSAGE:I = 0x6

.field private static final STATE_IN_SESSION:I = 0x4

.field private static final STATE_LOOKING_EJBJAR:I = 0x1


# instance fields
.field protected currentElement:Ljava/lang/String;

.field protected currentText:Ljava/lang/String;

.field protected ejbFiles:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field protected ejbName:Ljava/lang/String;

.field private fileDTDs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private inEJBRef:Z

.field private owningTask:Lorg/apache/tools/ant/Task;

.field private parseState:I

.field private publicId:Ljava/lang/String;

.field private resourceDTDs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private srcDir:Ljava/io/File;

.field private urlDTDs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/Task;Ljava/io/File;)V
    .locals 2

    .line 128
    invoke-direct {p0}, Lorg/xml/sax/HandlerBase;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->publicId:Ljava/lang/String;

    const/4 v1, 0x1

    .line 81
    iput v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    .line 89
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->currentElement:Ljava/lang/String;

    .line 94
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->currentText:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->ejbFiles:Ljava/util/Hashtable;

    .line 106
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->ejbName:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->fileDTDs:Ljava/util/Map;

    .line 110
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->resourceDTDs:Ljava/util/Map;

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->inEJBRef:Z

    .line 114
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->urlDTDs:Ljava/util/Map;

    .line 129
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->owningTask:Lorg/apache/tools/ant/Task;

    .line 130
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->srcDir:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->currentText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->currentText:Ljava/lang/String;

    return-void
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 309
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->processElement()V

    const-string v0, ""

    .line 310
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->currentText:Ljava/lang/String;

    .line 311
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->currentElement:Ljava/lang/String;

    const-string v0, "ejb-ref"

    .line 312
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "ejb-local-ref"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    const/4 v1, 0x5

    const/4 v2, 0x3

    if-ne v0, v1, :cond_1

    const-string v0, "entity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    iput v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    goto :goto_1

    .line 316
    :cond_1
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const-string v0, "session"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 317
    iput v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    goto :goto_1

    .line 318
    :cond_2
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    const-string v0, "message-driven"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 319
    iput v2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    goto :goto_1

    .line 320
    :cond_3
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    const/4 v1, 0x2

    if-ne v0, v2, :cond_4

    const-string v0, "enterprise-beans"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 321
    iput v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    goto :goto_1

    .line 322
    :cond_4
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    if-ne v0, v1, :cond_6

    const-string v0, "ejb-jar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    .line 323
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p1, 0x0

    .line 313
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->inEJBRef:Z

    :cond_6
    :goto_1
    return-void
.end method

.method public getEjbName()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->ejbName:Ljava/lang/String;

    return-object v0
.end method

.method public getFiles()Ljava/util/Hashtable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->ejbFiles:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    :cond_0
    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .line 246
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method protected processElement()V
    .locals 4

    .line 356
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->inEJBRef:Z

    if-nez v0, :cond_3

    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "home"

    .line 363
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->currentElement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "remote"

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->currentElement:Ljava/lang/String;

    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "local"

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->currentElement:Ljava/lang/String;

    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "local-home"

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->currentElement:Ljava/lang/String;

    .line 366
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ejb-class"

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->currentElement:Ljava/lang/String;

    .line 367
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "prim-key-class"

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->currentElement:Ljava/lang/String;

    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 371
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->currentText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java."

    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "javax."

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x2e

    .line 379
    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->ejbFiles:Ljava/util/Hashtable;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->srcDir:Ljava/io/File;

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->currentElement:Ljava/lang/String;

    const-string v1, "ejb-name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 387
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->ejbName:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 388
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->currentText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->ejbName:Ljava/lang/String;

    :cond_3
    :goto_0
    return-void
.end method

.method public registerDTD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 145
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 148
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->owningTask:Lorg/apache/tools/ant/Task;

    invoke-virtual {v0}, Lorg/apache/tools/ant/Task;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/tools/ant/Project;->resolveFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 151
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x3

    const-string v3, "Mapped publicId "

    if-eqz v1, :cond_3

    if-eqz p1, :cond_2

    .line 153
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->fileDTDs:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->owningTask:Lorg/apache/tools/ant/Task;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " to file "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v2}, Lorg/apache/tools/ant/Task;->log(Ljava/lang/String;I)V

    :cond_2
    return-void

    .line 160
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 162
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->resourceDTDs:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->owningTask:Lorg/apache/tools/ant/Task;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to resource "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/tools/ant/Task;->log(Ljava/lang/String;I)V

    :cond_4
    if-eqz p1, :cond_5

    .line 170
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 171
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->urlDTDs:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    return-void
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 192
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->publicId:Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->fileDTDs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    const/4 v1, 0x3

    const-string v2, "Resolved "

    if-eqz v0, :cond_0

    .line 197
    :try_start_0
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->owningTask:Lorg/apache/tools/ant/Task;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to local file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lorg/apache/tools/ant/Task;->log(Ljava/lang/String;I)V

    .line 199
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/nio/file/OpenOption;

    invoke-static {v0, v4}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 205
    :catch_0
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->resourceDTDs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 209
    iget-object p2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->owningTask:Lorg/apache/tools/ant/Task;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " to local resource "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v1}, Lorg/apache/tools/ant/Task;->log(Ljava/lang/String;I)V

    .line 211
    new-instance p1, Lorg/xml/sax/InputSource;

    invoke-direct {p1, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    return-object p1

    .line 215
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->urlDTDs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    if-eqz v0, :cond_2

    .line 218
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    .line 219
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->owningTask:Lorg/apache/tools/ant/Task;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " to url "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Lorg/apache/tools/ant/Task;->log(Ljava/lang/String;I)V

    .line 221
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 227
    :catch_1
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->owningTask:Lorg/apache/tools/ant/Task;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not resolve (publicId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", systemId: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") to a local entity"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/Task;->log(Ljava/lang/String;I)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public startDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 264
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0xa

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Ljava/util/Hashtable;-><init>(IF)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->ejbFiles:Ljava/util/Hashtable;

    const/4 v0, 0x0

    .line 265
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->currentElement:Ljava/lang/String;

    const/4 v0, 0x0

    .line 266
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->inEJBRef:Z

    return-void
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 280
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->currentElement:Ljava/lang/String;

    const-string p2, ""

    .line 281
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->currentText:Ljava/lang/String;

    const-string p2, "ejb-ref"

    .line 282
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_5

    const-string p2, "ejb-local-ref"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    iget p2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    const/4 v1, 0x2

    if-ne p2, v0, :cond_1

    const-string p2, "ejb-jar"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 285
    iput v1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    goto :goto_1

    .line 286
    :cond_1
    iget p2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    const/4 v0, 0x3

    if-ne p2, v1, :cond_2

    const-string p2, "enterprise-beans"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 287
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    goto :goto_1

    .line 288
    :cond_2
    iget p2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    if-ne p2, v0, :cond_3

    const-string p2, "session"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p1, 0x4

    .line 289
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    goto :goto_1

    .line 290
    :cond_3
    iget p2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    if-ne p2, v0, :cond_4

    const-string p2, "entity"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p1, 0x5

    .line 291
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    goto :goto_1

    .line 292
    :cond_4
    iget p2, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    if-ne p2, v0, :cond_6

    const-string p2, "message-driven"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x6

    .line 293
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->parseState:I

    goto :goto_1

    .line 283
    :cond_5
    :goto_0
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/ejb/DescriptorHandler;->inEJBRef:Z

    :cond_6
    :goto_1
    return-void
.end method
