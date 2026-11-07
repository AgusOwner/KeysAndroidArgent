.class public Lorg/apache/tools/ant/taskdefs/EchoXML$NamespacePolicy;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "EchoXML.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/EchoXML;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NamespacePolicy"
.end annotation


# static fields
.field private static final ALL:Ljava/lang/String; = "all"

.field public static final DEFAULT:Lorg/apache/tools/ant/taskdefs/EchoXML$NamespacePolicy;

.field private static final ELEMENTS:Ljava/lang/String; = "elementsOnly"

.field private static final IGNORE:Ljava/lang/String; = "ignore"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 100
    new-instance v0, Lorg/apache/tools/ant/taskdefs/EchoXML$NamespacePolicy;

    const-string v1, "ignore"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/EchoXML$NamespacePolicy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/EchoXML$NamespacePolicy;->DEFAULT:Lorg/apache/tools/ant/taskdefs/EchoXML$NamespacePolicy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    .line 107
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/EchoXML$NamespacePolicy;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getPolicy()Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;
    .locals 4

    .line 117
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/EchoXML$NamespacePolicy;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ignore"

    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    sget-object v0, Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;->IGNORE:Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;

    return-object v0

    :cond_0
    const-string v1, "elementsOnly"

    .line 121
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    sget-object v0, Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;->ONLY_QUALIFY_ELEMENTS:Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;

    return-object v0

    :cond_1
    const-string v1, "all"

    .line 125
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 126
    sget-object v0, Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;->QUALIFY_ALL:Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;

    return-object v0

    .line 128
    :cond_2
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid namespace policy: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getValues()[Ljava/lang/String;
    .locals 3

    const-string v0, "elementsOnly"

    const-string v1, "all"

    const-string v2, "ignore"

    .line 113
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
