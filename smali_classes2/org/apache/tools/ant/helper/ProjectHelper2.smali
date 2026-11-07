.class public Lorg/apache/tools/ant/helper/ProjectHelper2;
.super Lorg/apache/tools/ant/ProjectHelper;
.source "ProjectHelper2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;,
        Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;,
        Lorg/apache/tools/ant/helper/ProjectHelper2$ElementHandler;,
        Lorg/apache/tools/ant/helper/ProjectHelper2$TargetHandler;,
        Lorg/apache/tools/ant/helper/ProjectHelper2$MainHandler;,
        Lorg/apache/tools/ant/helper/ProjectHelper2$ProjectHandler;
    }
.end annotation


# static fields
.field private static final FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

.field private static final REFID_CONTEXT:Ljava/lang/String; = "ant.parsing.context"

.field public static final REFID_TARGETS:Ljava/lang/String; = "ant.targets"

.field private static elementHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

.field private static mainHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

.field private static projectHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

.field private static targetHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Lorg/apache/tools/ant/helper/ProjectHelper2$ElementHandler;

    invoke-direct {v0}, Lorg/apache/tools/ant/helper/ProjectHelper2$ElementHandler;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/helper/ProjectHelper2;->elementHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    .line 71
    new-instance v0, Lorg/apache/tools/ant/helper/ProjectHelper2$TargetHandler;

    invoke-direct {v0}, Lorg/apache/tools/ant/helper/ProjectHelper2$TargetHandler;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/helper/ProjectHelper2;->targetHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    .line 72
    new-instance v0, Lorg/apache/tools/ant/helper/ProjectHelper2$MainHandler;

    invoke-direct {v0}, Lorg/apache/tools/ant/helper/ProjectHelper2$MainHandler;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/helper/ProjectHelper2;->mainHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    .line 73
    new-instance v0, Lorg/apache/tools/ant/helper/ProjectHelper2$ProjectHandler;

    invoke-direct {v0}, Lorg/apache/tools/ant/helper/ProjectHelper2$ProjectHandler;-><init>()V

    sput-object v0, Lorg/apache/tools/ant/helper/ProjectHelper2;->projectHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    .line 81
    invoke-static {}, Lorg/apache/tools/ant/util/FileUtils;->getFileUtils()Lorg/apache/tools/ant/util/FileUtils;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/helper/ProjectHelper2;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectHelper;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lorg/apache/tools/ant/util/FileUtils;
    .locals 1

    .line 62
    sget-object v0, Lorg/apache/tools/ant/helper/ProjectHelper2;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    return-object v0
.end method

.method static synthetic access$200()Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;
    .locals 1

    .line 62
    sget-object v0, Lorg/apache/tools/ant/helper/ProjectHelper2;->projectHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    return-object v0
.end method

.method static synthetic access$300()Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;
    .locals 1

    .line 62
    sget-object v0, Lorg/apache/tools/ant/helper/ProjectHelper2;->targetHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    return-object v0
.end method

.method static synthetic access$400()Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;
    .locals 1

    .line 62
    sget-object v0, Lorg/apache/tools/ant/helper/ProjectHelper2;->elementHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    return-object v0
.end method

.method protected static getElementHandler()Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;
    .locals 1

    .line 367
    sget-object v0, Lorg/apache/tools/ant/helper/ProjectHelper2;->elementHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    return-object v0
.end method

.method protected static getMainHandler()Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;
    .locals 1

    .line 319
    sget-object v0, Lorg/apache/tools/ant/helper/ProjectHelper2;->mainHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    return-object v0
.end method

.method protected static getProjectHandler()Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;
    .locals 1

    .line 335
    sget-object v0, Lorg/apache/tools/ant/helper/ProjectHelper2;->projectHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    return-object v0
.end method

.method protected static getTargetHandler()Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;
    .locals 1

    .line 351
    sget-object v0, Lorg/apache/tools/ant/helper/ProjectHelper2;->targetHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    return-object v0
.end method

.method protected static setElementHandler(Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;)V
    .locals 0

    .line 375
    sput-object p0, Lorg/apache/tools/ant/helper/ProjectHelper2;->elementHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    return-void
.end method

.method protected static setMainHandler(Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;)V
    .locals 0

    .line 327
    sput-object p0, Lorg/apache/tools/ant/helper/ProjectHelper2;->mainHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    return-void
.end method

.method protected static setProjectHandler(Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;)V
    .locals 0

    .line 343
    sput-object p0, Lorg/apache/tools/ant/helper/ProjectHelper2;->projectHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    return-void
.end method

.method protected static setTargetHandler(Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;)V
    .locals 0

    .line 359
    sput-object p0, Lorg/apache/tools/ant/helper/ProjectHelper2;->targetHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    return-void
.end method


# virtual methods
.method public canParseAntlibDescriptor(Lorg/apache/tools/ant/types/Resource;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public parse(Lorg/apache/tools/ant/Project;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Lorg/apache/tools/ant/helper/ProjectHelper2;->getImportStack()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const-string v0, "ant.parsing.context"

    .line 153
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/Project;->getReference(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/helper/AntXMLContext;

    if-nez v1, :cond_0

    .line 155
    new-instance v1, Lorg/apache/tools/ant/helper/AntXMLContext;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/helper/AntXMLContext;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 156
    invoke-virtual {p1, v0, v1}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ant.targets"

    .line 157
    invoke-virtual {v1}, Lorg/apache/tools/ant/helper/AntXMLContext;->getTargets()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/apache/tools/ant/Project;->addReference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/helper/ProjectHelper2;->getImportStack()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 161
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/helper/AntXMLContext;->setIgnoreProjectTag(Z)V

    .line 162
    invoke-virtual {v1}, Lorg/apache/tools/ant/helper/AntXMLContext;->getCurrentTarget()Lorg/apache/tools/ant/Target;

    move-result-object v0

    .line 163
    invoke-virtual {v1}, Lorg/apache/tools/ant/helper/AntXMLContext;->getImplicitTarget()Lorg/apache/tools/ant/Target;

    move-result-object v2

    .line 164
    invoke-virtual {v1}, Lorg/apache/tools/ant/helper/AntXMLContext;->getCurrentTargets()Ljava/util/Map;

    move-result-object v3

    .line 166
    :try_start_0
    new-instance v4, Lorg/apache/tools/ant/Target;

    invoke-direct {v4}, Lorg/apache/tools/ant/Target;-><init>()V

    .line 167
    invoke-virtual {v4, p1}, Lorg/apache/tools/ant/Target;->setProject(Lorg/apache/tools/ant/Project;)V

    const-string v5, ""

    .line 168
    invoke-virtual {v4, v5}, Lorg/apache/tools/ant/Target;->setName(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v1, v4}, Lorg/apache/tools/ant/helper/AntXMLContext;->setCurrentTarget(Lorg/apache/tools/ant/Target;)V

    .line 170
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v5}, Lorg/apache/tools/ant/helper/AntXMLContext;->setCurrentTargets(Ljava/util/Map;)V

    .line 171
    invoke-virtual {v1, v4}, Lorg/apache/tools/ant/helper/AntXMLContext;->setImplicitTarget(Lorg/apache/tools/ant/Target;)V

    .line 172
    new-instance v5, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;

    sget-object v6, Lorg/apache/tools/ant/helper/ProjectHelper2;->mainHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    invoke-direct {v5, v1, v6}, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;-><init>(Lorg/apache/tools/ant/helper/AntXMLContext;Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;)V

    invoke-virtual {p0, p1, p2, v5}, Lorg/apache/tools/ant/helper/ProjectHelper2;->parse(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;)V

    .line 173
    invoke-virtual {v4}, Lorg/apache/tools/ant/Target;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/helper/AntXMLContext;->setCurrentTarget(Lorg/apache/tools/ant/Target;)V

    .line 176
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/helper/AntXMLContext;->setImplicitTarget(Lorg/apache/tools/ant/Target;)V

    .line 177
    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/helper/AntXMLContext;->setCurrentTargets(Ljava/util/Map;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 175
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/helper/AntXMLContext;->setCurrentTarget(Lorg/apache/tools/ant/Target;)V

    .line 176
    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/helper/AntXMLContext;->setImplicitTarget(Lorg/apache/tools/ant/Target;)V

    .line 177
    invoke-virtual {v1, v3}, Lorg/apache/tools/ant/helper/AntXMLContext;->setCurrentTargets(Ljava/util/Map;)V

    .line 178
    throw p1

    .line 181
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/helper/AntXMLContext;->setCurrentTargets(Ljava/util/Map;)V

    .line 182
    new-instance v0, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;

    sget-object v2, Lorg/apache/tools/ant/helper/ProjectHelper2;->mainHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;-><init>(Lorg/apache/tools/ant/helper/AntXMLContext;Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/tools/ant/helper/ProjectHelper2;->parse(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;)V

    .line 184
    invoke-virtual {v1}, Lorg/apache/tools/ant/helper/AntXMLContext;->getImplicitTarget()Lorg/apache/tools/ant/Target;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/tools/ant/Target;->execute()V

    .line 187
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/helper/ProjectHelper2;->resolveExtensionOfAttributes(Lorg/apache/tools/ant/Project;)V

    :goto_0
    return-void
.end method

.method public parse(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "parsing buildfile "

    const-string v1, "Error reading project file "

    const-string v2, "Encoding of project file "

    .line 202
    invoke-static {p3}, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;->access$000(Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;)Lorg/apache/tools/ant/helper/AntXMLContext;

    move-result-object v3

    .line 208
    instance-of v4, p2, Ljava/io/File;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 209
    move-object v4, p2

    check-cast v4, Ljava/io/File;

    :goto_0
    move-object v6, v5

    goto :goto_2

    .line 210
    :cond_0
    instance-of v4, p2, Ljava/net/URL;

    if-eqz v4, :cond_1

    .line 211
    move-object v4, p2

    check-cast v4, Ljava/net/URL;

    :goto_1
    move-object v6, v4

    move-object v4, v5

    goto :goto_2

    .line 212
    :cond_1
    instance-of v4, p2, Lorg/apache/tools/ant/types/Resource;

    if-eqz v4, :cond_3

    .line 213
    move-object v4, p2

    check-cast v4, Lorg/apache/tools/ant/types/Resource;

    const-class v6, Lorg/apache/tools/ant/types/resources/FileProvider;

    invoke-virtual {v4, v6}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/tools/ant/types/resources/FileProvider;

    if-eqz v6, :cond_2

    .line 215
    invoke-interface {v6}, Lorg/apache/tools/ant/types/resources/FileProvider;->getFile()Ljava/io/File;

    move-result-object v4

    goto :goto_0

    .line 217
    :cond_2
    const-class v6, Lorg/apache/tools/ant/types/resources/URLProvider;

    invoke-virtual {v4, v6}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/tools/ant/types/resources/URLProvider;

    if-eqz v4, :cond_3

    .line 219
    invoke-interface {v4}, Lorg/apache/tools/ant/types/resources/URLProvider;->getURL()Ljava/net/URL;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v4, v5

    move-object v6, v4

    :goto_2
    if-eqz v4, :cond_4

    .line 224
    sget-object p2, Lorg/apache/tools/ant/helper/ProjectHelper2;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/apache/tools/ant/util/FileUtils;->normalize(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 225
    invoke-virtual {v3, v4}, Lorg/apache/tools/ant/helper/AntXMLContext;->setBuildFile(Ljava/io/File;)V

    .line 226
    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_4
    if-eqz v6, :cond_e

    .line 229
    :try_start_0
    move-object p2, v5

    check-cast p2, Ljava/io/File;

    invoke-virtual {v3, v5}, Lorg/apache/tools/ant/helper/AntXMLContext;->setBuildFile(Ljava/io/File;)V

    .line 230
    invoke-virtual {v3, v6}, Lorg/apache/tools/ant/helper/AntXMLContext;->setBuildFile(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_a

    .line 234
    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    .line 247
    :goto_3
    :try_start_1
    invoke-static {}, Lorg/apache/tools/ant/util/JAXPUtils;->getNamespaceXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    const/4 v7, 0x0

    if-eqz v4, :cond_5

    .line 251
    sget-object v6, Lorg/apache/tools/ant/helper/ProjectHelper2;->FILE_UTILS:Lorg/apache/tools/ant/util/FileUtils;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/apache/tools/ant/util/FileUtils;->toURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 252
    invoke-virtual {v4}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v4

    new-array v7, v7, [Ljava/nio/file/OpenOption;

    invoke-static {v4, v7}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v4

    move-object v10, v5

    move-object v5, v4

    move-object v4, v6

    move-object v6, v10

    goto :goto_4

    .line 254
    :cond_5
    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "!/"

    .line 255
    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const-string v9, "jar:file"

    .line 256
    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, -0x1

    if-le v8, v9, :cond_6

    .line 257
    new-instance v6, Lorg/apache/tools/zip/ZipFile;

    .line 258
    invoke-static {v4}, Lorg/apache/tools/ant/launch/Locator;->fromJarURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "UTF-8"

    invoke-direct {v6, v7, v9}, Lorg/apache/tools/zip/ZipFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXParseException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v8, v8, 0x2

    .line 260
    :try_start_2
    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/tools/zip/ZipFile;->getEntry(Ljava/lang/String;)Lorg/apache/tools/zip/ZipEntry;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/tools/zip/ZipFile;->getInputStream(Lorg/apache/tools/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5
    :try_end_2
    .catch Lorg/xml/sax/SAXParseException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    .line 262
    :cond_6
    :try_start_3
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    .line 263
    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 264
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6
    :try_end_3
    .catch Lorg/xml/sax/SAXParseException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v10, v6

    move-object v6, v5

    move-object v5, v10

    .line 268
    :goto_4
    :try_start_4
    new-instance v7, Lorg/xml/sax/InputSource;

    invoke-direct {v7, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    if-eqz v4, :cond_7

    .line 270
    invoke-virtual {v7, v4}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 272
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " with URI = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v6, :cond_8

    const-string v4, " from a zip file"

    goto :goto_5

    :cond_8
    const-string v4, ""

    .line 273
    :goto_5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    .line 272
    invoke-virtual {p1, v0, v4}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 276
    invoke-interface {v3, p3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 277
    invoke-interface {v3, p3}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 278
    invoke-interface {v3, p3}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 279
    invoke-interface {v3, p3}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 280
    invoke-interface {v3, v7}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_4
    .catch Lorg/xml/sax/SAXParseException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 309
    invoke-static {v5}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 310
    invoke-static {v6}, Lorg/apache/tools/zip/ZipFile;->closeQuietly(Lorg/apache/tools/zip/ZipFile;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_6

    :catch_1
    move-exception p1

    goto :goto_7

    :catch_2
    move-exception p1

    goto :goto_8

    :catch_3
    move-exception p1

    goto :goto_9

    :catch_4
    move-exception p1

    goto :goto_b

    :catchall_0
    move-exception p1

    move-object v6, v5

    goto/16 :goto_d

    :catch_5
    move-exception p1

    move-object v6, v5

    .line 306
    :goto_6
    :try_start_5
    new-instance p3, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 307
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :catch_6
    move-exception p1

    move-object v6, v5

    .line 303
    :goto_7
    new-instance p3, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " is invalid."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :catch_7
    move-exception p1

    move-object v6, v5

    .line 301
    :goto_8
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_8
    move-exception p1

    move-object v6, v5

    .line 295
    :goto_9
    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object p2

    .line 296
    instance-of p3, p2, Lorg/apache/tools/ant/BuildException;

    if-nez p3, :cond_a

    .line 299
    new-instance p3, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_9

    goto :goto_a

    :cond_9
    move-object p1, p2

    :goto_a
    invoke-direct {p3, v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    .line 297
    :cond_a
    check-cast p2, Lorg/apache/tools/ant/BuildException;

    throw p2

    :catch_9
    move-exception p1

    move-object v6, v5

    .line 282
    :goto_b
    new-instance p2, Lorg/apache/tools/ant/Location;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v0

    .line 283
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v1

    invoke-direct {p2, p3, v0, v1}, Lorg/apache/tools/ant/Location;-><init>(Ljava/lang/String;II)V

    .line 285
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getException()Ljava/lang/Exception;

    move-result-object p3

    .line 286
    instance-of v0, p3, Lorg/apache/tools/ant/BuildException;

    if-eqz v0, :cond_c

    .line 287
    check-cast p3, Lorg/apache/tools/ant/BuildException;

    .line 288
    invoke-virtual {p3}, Lorg/apache/tools/ant/BuildException;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object p1

    sget-object v0, Lorg/apache/tools/ant/Location;->UNKNOWN_LOCATION:Lorg/apache/tools/ant/Location;

    if-ne p1, v0, :cond_b

    .line 289
    invoke-virtual {p3, p2}, Lorg/apache/tools/ant/BuildException;->setLocation(Lorg/apache/tools/ant/Location;)V

    .line 291
    :cond_b
    throw p3

    .line 293
    :cond_c
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez p3, :cond_d

    goto :goto_c

    :cond_d
    move-object p1, p3

    :goto_c
    invoke-direct {v0, v1, p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    .line 309
    :goto_d
    invoke-static {v5}, Lorg/apache/tools/ant/util/FileUtils;->close(Ljava/io/InputStream;)V

    .line 310
    invoke-static {v6}, Lorg/apache/tools/zip/ZipFile;->closeQuietly(Lorg/apache/tools/zip/ZipFile;)V

    .line 311
    throw p1

    :catch_a
    move-exception p1

    .line 232
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    invoke-direct {p2, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 236
    :cond_e
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Source "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " not supported by this plugin"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parseAntlibDescriptor(Lorg/apache/tools/ant/Project;Lorg/apache/tools/ant/types/Resource;)Lorg/apache/tools/ant/UnknownElement;
    .locals 2

    .line 110
    const-class v0, Lorg/apache/tools/ant/types/resources/URLProvider;

    invoke-virtual {p2, v0}, Lorg/apache/tools/ant/types/Resource;->as(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/resources/URLProvider;

    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0}, Lorg/apache/tools/ant/types/resources/URLProvider;->getURL()Ljava/net/URL;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/tools/ant/helper/ProjectHelper2;->parseUnknownElement(Lorg/apache/tools/ant/Project;Ljava/net/URL;)Lorg/apache/tools/ant/UnknownElement;

    move-result-object p1

    return-object p1

    .line 112
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported resource type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parseUnknownElement(Lorg/apache/tools/ant/Project;Ljava/net/URL;)Lorg/apache/tools/ant/UnknownElement;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 127
    new-instance v0, Lorg/apache/tools/ant/Target;

    invoke-direct {v0}, Lorg/apache/tools/ant/Target;-><init>()V

    .line 128
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Target;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 130
    new-instance v1, Lorg/apache/tools/ant/helper/AntXMLContext;

    invoke-direct {v1, p1}, Lorg/apache/tools/ant/helper/AntXMLContext;-><init>(Lorg/apache/tools/ant/Project;)V

    .line 131
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/helper/AntXMLContext;->addTarget(Lorg/apache/tools/ant/Target;)V

    .line 132
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/helper/AntXMLContext;->setImplicitTarget(Lorg/apache/tools/ant/Target;)V

    .line 134
    invoke-virtual {v1}, Lorg/apache/tools/ant/helper/AntXMLContext;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    new-instance v2, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;

    sget-object v3, Lorg/apache/tools/ant/helper/ProjectHelper2;->elementHandler:Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;

    invoke-direct {v2, v1, v3}, Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;-><init>(Lorg/apache/tools/ant/helper/AntXMLContext;Lorg/apache/tools/ant/helper/ProjectHelper2$AntHandler;)V

    invoke-virtual {p0, p1, p2, v2}, Lorg/apache/tools/ant/helper/ProjectHelper2;->parse(Lorg/apache/tools/ant/Project;Ljava/lang/Object;Lorg/apache/tools/ant/helper/ProjectHelper2$RootHandler;)V

    .line 135
    invoke-virtual {v0}, Lorg/apache/tools/ant/Target;->getTasks()[Lorg/apache/tools/ant/Task;

    move-result-object p1

    .line 136
    array-length p2, p1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    .line 139
    aget-object p1, p1, p2

    check-cast p1, Lorg/apache/tools/ant/UnknownElement;

    return-object p1

    .line 137
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string p2, "No tasks defined"

    invoke-direct {p1, p2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
