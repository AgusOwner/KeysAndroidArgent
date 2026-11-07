.class public final Lorg/apache/tools/ant/taskdefs/AttributeNamespaceDef;
.super Lorg/apache/tools/ant/taskdefs/AntlibDefinition;
.source "AttributeNamespaceDef.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/AntlibDefinition;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 41
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AttributeNamespaceDef;->getURI()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v0}, Lorg/apache/tools/ant/ProjectHelper;->nsToComponentName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    new-instance v1, Lorg/apache/tools/ant/AntTypeDefinition;

    invoke-direct {v1}, Lorg/apache/tools/ant/AntTypeDefinition;-><init>()V

    .line 43
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/AntTypeDefinition;->setName(Ljava/lang/String;)V

    .line 44
    const-class v0, Lorg/apache/tools/ant/attribute/AttributeNamespace;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/AntTypeDefinition;->setClassName(Ljava/lang/String;)V

    .line 45
    const-class v0, Lorg/apache/tools/ant/attribute/AttributeNamespace;

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/AntTypeDefinition;->setClass(Ljava/lang/Class;)V

    const/4 v0, 0x1

    .line 46
    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/AntTypeDefinition;->setRestrict(Z)V

    .line 47
    const-class v0, Lorg/apache/tools/ant/attribute/AttributeNamespace;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/tools/ant/AntTypeDefinition;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 48
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/AttributeNamespaceDef;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/ComponentHelper;->getComponentHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/ComponentHelper;

    move-result-object v0

    .line 49
    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/ComponentHelper;->addDataTypeDefinition(Lorg/apache/tools/ant/AntTypeDefinition;)V

    return-void
.end method
