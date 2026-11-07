.class public Lorg/apache/tools/zip/UnsupportedZipFeatureException;
.super Ljava/util/zip/ZipException;
.source "UnsupportedZipFeatureException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/zip/UnsupportedZipFeatureException$Feature;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x133a2c5L


# instance fields
.field private final transient entry:Lorg/apache/tools/zip/ZipEntry;

.field private final reason:Lorg/apache/tools/zip/UnsupportedZipFeatureException$Feature;


# direct methods
.method public constructor <init>(Lorg/apache/tools/zip/UnsupportedZipFeatureException$Feature;Lorg/apache/tools/zip/ZipEntry;)V
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unsupported feature "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " used in entry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 43
    invoke-virtual {p2}, Lorg/apache/tools/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-direct {p0, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lorg/apache/tools/zip/UnsupportedZipFeatureException;->reason:Lorg/apache/tools/zip/UnsupportedZipFeatureException$Feature;

    .line 45
    iput-object p2, p0, Lorg/apache/tools/zip/UnsupportedZipFeatureException;->entry:Lorg/apache/tools/zip/ZipEntry;

    return-void
.end method


# virtual methods
.method public getEntry()Lorg/apache/tools/zip/ZipEntry;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/apache/tools/zip/UnsupportedZipFeatureException;->entry:Lorg/apache/tools/zip/ZipEntry;

    return-object v0
.end method

.method public getFeature()Lorg/apache/tools/zip/UnsupportedZipFeatureException$Feature;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/apache/tools/zip/UnsupportedZipFeatureException;->reason:Lorg/apache/tools/zip/UnsupportedZipFeatureException$Feature;

    return-object v0
.end method
