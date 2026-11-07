.class public Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;
.super Ljava/lang/Object;
.source "DOMElementWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/util/DOMElementWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XmlNamespacePolicy"
.end annotation


# static fields
.field public static final IGNORE:Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;

.field public static final ONLY_QUALIFY_ELEMENTS:Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;

.field public static final QUALIFY_ALL:Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;


# instance fields
.field private qualifyAttributes:Z

.field private qualifyElements:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 97
    new-instance v0, Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;-><init>(ZZ)V

    sput-object v0, Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;->IGNORE:Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;

    .line 103
    new-instance v0, Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;-><init>(ZZ)V

    sput-object v0, Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;->ONLY_QUALIFY_ELEMENTS:Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;

    .line 109
    new-instance v0, Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;

    invoke-direct {v0, v2, v2}, Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;-><init>(ZZ)V

    sput-object v0, Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;->QUALIFY_ALL:Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-boolean p1, p0, Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;->qualifyElements:Z

    .line 119
    iput-boolean p2, p0, Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;->qualifyAttributes:Z

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;->qualifyElements:Z

    return p0
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;)Z
    .locals 0

    .line 90
    iget-boolean p0, p0, Lorg/apache/tools/ant/util/DOMElementWriter$XmlNamespacePolicy;->qualifyAttributes:Z

    return p0
.end method
