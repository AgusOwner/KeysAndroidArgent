.class public Lorg/apache/tools/zip/UnsupportedZipFeatureException$Feature;
.super Ljava/lang/Object;
.source "UnsupportedZipFeatureException.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/zip/UnsupportedZipFeatureException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Feature"
.end annotation


# static fields
.field public static final DATA_DESCRIPTOR:Lorg/apache/tools/zip/UnsupportedZipFeatureException$Feature;

.field public static final ENCRYPTION:Lorg/apache/tools/zip/UnsupportedZipFeatureException$Feature;

.field public static final METHOD:Lorg/apache/tools/zip/UnsupportedZipFeatureException$Feature;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    new-instance v0, Lorg/apache/tools/zip/UnsupportedZipFeatureException$Feature;

    const-string v1, "encryption"

    invoke-direct {v0, v1}, Lorg/apache/tools/zip/UnsupportedZipFeatureException$Feature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/zip/UnsupportedZipFeatureException$Feature;->ENCRYPTION:Lorg/apache/tools/zip/UnsupportedZipFeatureException$Feature;

    .line 78
    new-instance v0, Lorg/apache/tools/zip/UnsupportedZipFeatureException$Feature;

    const-string v1, "compression method"

    invoke-direct {v0, v1}, Lorg/apache/tools/zip/UnsupportedZipFeatureException$Feature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/zip/UnsupportedZipFeatureException$Feature;->METHOD:Lorg/apache/tools/zip/UnsupportedZipFeatureException$Feature;

    .line 82
    new-instance v0, Lorg/apache/tools/zip/UnsupportedZipFeatureException$Feature;

    const-string v1, "data descriptor"

    invoke-direct {v0, v1}, Lorg/apache/tools/zip/UnsupportedZipFeatureException$Feature;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/zip/UnsupportedZipFeatureException$Feature;->DATA_DESCRIPTOR:Lorg/apache/tools/zip/UnsupportedZipFeatureException$Feature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lorg/apache/tools/zip/UnsupportedZipFeatureException$Feature;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/tools/zip/UnsupportedZipFeatureException$Feature;->name:Ljava/lang/String;

    return-object v0
.end method
