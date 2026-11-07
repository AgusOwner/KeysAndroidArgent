.class public final Lorg/apache/tools/ant/DefaultDefinitions;
.super Ljava/lang/Object;
.source "DefaultDefinitions.java"


# static fields
.field private static final IF_NAMESPACE:Ljava/lang/String; = "ant:if"

.field private static final UNLESS_NAMESPACE:Ljava/lang/String; = "ant:unless"


# instance fields
.field private final componentHelper:Lorg/apache/tools/ant/ComponentHelper;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/ComponentHelper;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/apache/tools/ant/DefaultDefinitions;->componentHelper:Lorg/apache/tools/ant/ComponentHelper;

    return-void
.end method

.method private attributeNamespaceDef(Ljava/lang/String;)V
    .locals 1

    .line 52
    new-instance v0, Lorg/apache/tools/ant/AntTypeDefinition;

    invoke-direct {v0}, Lorg/apache/tools/ant/AntTypeDefinition;-><init>()V

    .line 53
    invoke-static {p1}, Lorg/apache/tools/ant/ProjectHelper;->nsToComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/AntTypeDefinition;->setName(Ljava/lang/String;)V

    const-string p1, "org.apache.tools.ant.attribute.AttributeNamespace"

    .line 54
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/AntTypeDefinition;->setClassName(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/AntTypeDefinition;->setClassLoader(Ljava/lang/ClassLoader;)V

    const/4 p1, 0x1

    .line 56
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/AntTypeDefinition;->setRestrict(Z)V

    .line 57
    iget-object p1, p0, Lorg/apache/tools/ant/DefaultDefinitions;->componentHelper:Lorg/apache/tools/ant/ComponentHelper;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/ComponentHelper;->addDataTypeDefinition(Lorg/apache/tools/ant/AntTypeDefinition;)V

    return-void
.end method

.method private componentDef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 67
    new-instance v0, Lorg/apache/tools/ant/AntTypeDefinition;

    invoke-direct {v0}, Lorg/apache/tools/ant/AntTypeDefinition;-><init>()V

    .line 68
    invoke-static {p1, p2}, Lorg/apache/tools/ant/ProjectHelper;->genComponentName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/AntTypeDefinition;->setName(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, p3}, Lorg/apache/tools/ant/AntTypeDefinition;->setClassName(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/AntTypeDefinition;->setClassLoader(Ljava/lang/ClassLoader;)V

    const/4 p1, 0x1

    .line 71
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/AntTypeDefinition;->setRestrict(Z)V

    .line 72
    iget-object p1, p0, Lorg/apache/tools/ant/DefaultDefinitions;->componentHelper:Lorg/apache/tools/ant/ComponentHelper;

    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/ComponentHelper;->addDataTypeDefinition(Lorg/apache/tools/ant/AntTypeDefinition;)V

    return-void
.end method

.method private ifUnlessDef(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "org.apache.tools.ant.attribute."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ant:if"

    .line 62
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/tools/ant/DefaultDefinitions;->componentDef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "$Unless"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ant:unless"

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/tools/ant/DefaultDefinitions;->componentDef(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    const-string v0, "ant:if"

    .line 43
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/DefaultDefinitions;->attributeNamespaceDef(Ljava/lang/String;)V

    const-string v0, "ant:unless"

    .line 44
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/DefaultDefinitions;->attributeNamespaceDef(Ljava/lang/String;)V

    const-string v0, "true"

    const-string v1, "IfTrueAttribute"

    .line 46
    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/DefaultDefinitions;->ifUnlessDef(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "set"

    const-string v1, "IfSetAttribute"

    .line 47
    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/DefaultDefinitions;->ifUnlessDef(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "blank"

    const-string v1, "IfBlankAttribute"

    .line 48
    invoke-direct {p0, v0, v1}, Lorg/apache/tools/ant/DefaultDefinitions;->ifUnlessDef(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
